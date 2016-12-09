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
class Broodjes_Admin_Sieges {

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
	 * Initialize the class and set its properties.
	 *
	 * @since    1.0.0
	 * @param      string    $broodjes       The name of this plugin.
	 * @param      string    $version    The version of this plugin.
	 */
	public function __construct( $broodjes, $version ) {

		$this->broodjes = $broodjes;
		$this->version = $version;

	}

    public function menu_options()
	{
	?>  
		<h3>Voeg nieuw beleg toe.</h3>
		<form action="<?php echo esc_url( admin_url('admin-post.php') ); ?>" method="post">
	
			<label>Beleg:</label>
			    <input type="text" name="siege_name" required><br>
			
			<label>Prijs:</label>
			    <input type="number" name="siege_price_one" MIN="0" MAX="100" required>
			    <input type="number" name="siege_price_two" MIN="5" MAX="99" STEP="05" required>
			    	<br>
			    <input type="hidden" name="action" value="sieges_process_form"><br>
				<input type="submit" name="add_siege" class="button button_secondary" value="Opslaan">
		</form><br>
		<hr>
		<section id="sieges">
				<h3>Bestel formulier</h3>
		<form action="<?php echo esc_url( ( admin_url('admin-post.php') ) ); ?>" method="post">	

			 <table style="width:100%;">
			    <tr>
                    <td><b>Selecteer alles: </b></td>
                    <td></td>
                    <td><input type="checkbox" name="all_sieges" id="all_sieges" /></td>
                </tr>
            </table><br>

			 <table style="width:100%;">
                 <tr>
                    <td><b>Beleg:</b></td>
                    <td><b>Prijs:</b></td>
                 </tr>
                 <tr>
                    <?php foreach ($this->get_sieges() as $siege) : ?>
                        <td><?php echo  $siege->siege_name . "</td><td>€  " . $siege->siege_price ;?></td> 
                        <td><input name="checkbox_sieges[]" type="checkbox" name="select_sieges" value="<?=$siege->siege_id; ?>"></td>
                 </tr>
                    <?php endforeach; ?>
            </table><br>
				
			<input type="hidden" name="action" value="siege_delete">
			<input type="submit" name="delete_sieges" class="button button-secondary" value="Verwijderen">
		</form><br>
	<?php
	}

	public function add_siege_process_form()
	{
		global $wpdb; 

		$price_one = $_POST['siege_price_one'];
		$price_two = $_POST['siege_price_two'];

		if(is_numeric($price_one) === false || is_numeric($price_two) === false) {
			die("Prijs input is niet geldig");
		}

	    $siege_name = sanitize_text_field($_POST['siege_name']);
	    $siege_price = sanitize_text_field($price_one) . "." . sanitize_text_field($price_two);

	    $wpdb->query("INSERT INTO `wp5415_sieges`(`siege_name`, `siege_price`) VALUES ( '$siege_name', '$siege_price')");


	    $url = esc_url( admin_url('admin.php?page=broodjes_options') );
	    if ( wp_redirect( $url ) ) {
	    	exit;
	    }
	}

	public function get_sieges()
	{
		global $wpdb;

		$sieges = $wpdb->get_results("SELECT * FROM `wp5415_sieges`") or print "Geen resultaten gevonden";

		return $sieges;
	}

	public function delete_sieges()
	{
		global $wpdb;

		$sieges = $_POST['checkbox_sieges'];

		foreach ($sieges as $siege) {
			$siege_id = sanitize_text_field($siege);
			$wpdb->query("DELETE FROM `wp5415_sieges` WHERE siege_id=$siege_id");
		}

	    $url = esc_url( admin_url('admin.php?page=broodjes_options') );
	    if ( wp_redirect( $url ) ) {
	    	exit;
	    }
	}
}