<?php

/**
 * The admin-specific functionality of the plugin.
 *
 * @link       www.silvas.nl
 * @since      1.0.0
 *
 * @package    Broodjes
 * @subpackage Broodjes/admin
 */

/**
 * The admin-specific functionality of the plugin.
 *
 * Defines the plugin name, version, and two examples hooks for how to
 * enqueue the admin-specific stylesheet and JavaScript.
 *
 * @package    Broodjes
 * @subpackage Broodjes/admin
 * @author     Silvas <stage@silvas.nl>
 */
class Broodjes_Admin_Organisations {

	/**
	 * The ID of this plugin.
	 *
	 * @since    1.0.0
	 * @access   private
	 * @var      string    $broodjes    The ID of this plugin.
	 */
	private $broodjes;

	/**
	 * The version of this plugin.
	 *
	 * @since    1.0.0
	 * @access   private
	 * @var      string    $version    The current version of this plugin.
	 */
	private $version;

	/**
	 * The table name.
	 *
	 * @since    1.0.0
	 * @access   private
	 * @var      string    $table    The table name that is needed.
	 */
	private $table;

	/**
	 * Initialize the class and set its properties.
	 *
	 * @since    1.0.0
	 * @param      string    $broodjes       The name of this plugin.
	 * @param      string    $version    The version of this plugin.
	 */
	public function __construct( $broodjes, $version ) {

		global $wpdb;

		$this->broodjes = $broodjes;
		$this->version 	= $version;
		$this->table 	= $wpdb->prefix . "organisations";

	}

    public function organisations_options()
	{
	?>
		<h3>Voeg organisatie toe</h3>
		<form action="<?php echo esc_url( admin_url('admin-post.php') ); ?>" method="post">
	
			<label>Bedrijfs naam:</label>
			    <input type="text" name="organisation_name" required>

			    <input type="hidden" name="action" value="organisation_process_form">
			    <select style="display: none;">
				   <?php wp_dropdown_roles( 'subscriber' ); ?>
				</select>
				<input type="submit" name="add_organisation" class="button button_secondary" value="Opslaan">
		</form><br>
		<hr>
		<form action="<?php echo esc_url( admin_url('admin-post.php') ); ?>" method="post">
		<section id="organisation">

			<h3>Organisaties</h3>

            <table style="width:100%;">
			    <tr>
                    <td><b>Selecteer alles: </b></td>
                    <td></td>
                    <td><input type="checkbox" name="all_organisations" id="alles" /></td>
                </tr>
            </table><br>

            <table style="width:100%;">
                <tr>
                    <td><b>Bedrijfsnaam:</b></td>
                </tr>
                <tr>
				<?php foreach ($this->get_organisations() as $organisation): ?>
					 <td><?=$organisation->name;?></td>
                    <td><input name="checkbox_organisation[]" type="checkbox" id="select_organisation" name="select_organisations" value="<?=$organisation->id; ?>"></td>
                </tr>
				<?php endforeach; ?>
				
            </table><br>

		</section>
			<input type="hidden" name="action" value="organisation_delete">
			<input type="submit" name="delete_organisation" class="button button-secondary" value="Verwijderen">
		</form><br>
	<?php
	}

	public function add_organisation_process_form()
	{
		global $wpdb; 

	    // securing the input. NEVER TRUST USER INPUT! 
	    //https://developer.wordpress.org/plugins/security/securing-input/
	    $organisation_name = sanitize_text_field($_POST['organisation_name']);

		if ( !empty($organisation_name) ) 
		{
			$wpdb->query("INSERT INTO `$this->table`(`name`) VALUES ( '$organisation_name')");

			// // after processing redirect back to the side
		    $url = esc_url( admin_url('admin.php?page=broodjes_options') );
		    if ( wp_redirect( $url ) ) 
		    {
		    	exit;
		    }
		} 
		else 
		{
			die("Invoer is leeg!.");
		}
    
	}

	public function get_organisations()
	{
		global $wpdb;

		$organisations = $wpdb->get_results("SELECT * FROM `$this->table` ") or die;

		return $organisations;
	}

    public function delete_organisation()
	{
		global $wpdb;

		$organisations = $_POST['checkbox_organisation'];

		foreach ($organisations as $organisation) {
			$organisation_id = sanitize_text_field($organisation);

			$wpdb->query("DELETE FROM `$this->table` WHERE ID=$organisation_id");
		}

	    $url = esc_url( admin_url('admin.php?page=broodjes_options') );
	    if ( wp_redirect( $url ) ) {
	    	exit;
	    }
	}
}