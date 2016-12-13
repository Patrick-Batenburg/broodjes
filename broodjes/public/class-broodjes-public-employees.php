<?php

/**
 * The public-specific functionality of the plugin.
 *
 * @link       www.silvas.nl
 * @since      1.0.0
 *
 * @package    Broodjes
 * @subpackage Broodjes/public
 */

/**
 * The public-specific functionality of the plugin.
 *
 * Defines the plugin name, version, and two examples hooks for how to
 * enqueue the public-specific stylesheet and JavaScript.
 *
 * @package    Broodjes
 * @subpackage Broodjes/public
 * @author     Silvas <stage@silvas.nl>
 */
class Broodjes_Public_Employees {

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

    public function employees_options()
	{
	?>
		<h3>Voeg collega toe</h3>
		<form action="<?php echo esc_url( public_url('public-post.php') ); ?>" method="post">
	
			<label>Naam:</label>
			    <input type="text" name="employee_name" required><br>
			
			<label>Email:</label>
			    <input type="email" name="employee_email" required><br>

			<label>Wachtwoord:</label>
			    <input type="password" name="employee_password" required><br>

			<label>Herhaal wachtwoord</label>
			    <input type="password" name="employee_password_confirm" required><br>

			    <input type="hidden" name="action" value="employee_process_form">
			    <select style="display: none;">
				   <?php wp_dropdown_roles( 'subscriber' ); ?>
				</select>
				<input type="submit" name="add_employee" class="button button_secondary" value="Opslaan">
		</form><br>
		<hr>
		<form action="<?php echo esc_url( public_url('public-post.php') ); ?>" method="post">
		<section id="employee">

			<h3>Werknemers</h3>

            <table style="width:100%;">
			    <tr>
                    <td><b>Selecteer alles: </b></td>
                    <td></td>
                    <td><input type="checkbox" name="all_employees" id="alles" /></td>
                </tr>
            </table><br>

            <table style="width:100%;">
                <tr>
                    <td><b>Naam:</b></td>
                    <td><b>Email:</b></td>
                </tr>
                <tr>
				<?php foreach ($this->get_employees() as $employee): ?>
                    <td><?php echo $employee->user_login . "</td><td> " . $employee->user_email . "</td>";?>
                    <td><input name="checkbox_employee[]" type="checkbox" id="select_employee" name="select_employees" value="<?=$employee->ID; ?>"></td>
                </tr>
				<?php endforeach; ?>
				
            </table><br>

		</section>
			<input type="hidden" name="action" value="employee_delete">
			<input type="submit" name="delete_employee" class="button button-secondary" value="Verwijderen">
		</form><br>
	<?php
	}

	public function add_employee_process_form()
	{
		global $wpdb; 

	    // securing the input. NEVER TRUST USER INPUT! 
	    //https://developer.wordpress.org/plugins/security/securing-input/
	    $employee_name = sanitize_text_field($_POST['employee_name']);
	    $employee_email = sanitize_text_field($_POST['employee_email']);
	    $employee_pwd = sanitize_text_field($_POST['employee_password']);
	    $employee_pwd_confirm = sanitize_text_field($_POST['employee_password_confirm']);

	    if($employee_pwd != $employee_pwd_confirm) 
	    {
	    	die("Wachtwoord komt niet met elkaar overeen.");
	    }

	    $employee_id = username_exists( $employee_name );
		if ( !$employee_id && email_exists($employee_email) == false ) 
		{
			$employee_id = wp_create_user( $employee_name, $employee_pwd, $employee_email );

			// after processing redirect back to the side
		    $url = esc_url( public_url('public.php?page=broodjes_options') );
		    if ( wp_redirect( $url ) ) {
		    	exit;
		    }
		} 
		else 
		{
			//$random_password = __('User already exists.  Password inherited.');
			die("Gebruiker bestaat al.");
		}
    
	}

	public function get_employees()
	{
		global $wpdb;

		$employees = $wpdb->get_results("SELECT * FROM $wpdb->users ") or die;

		return $employees;
	}

    public function delete_employee()
	{
		global $wpdb;

		$employees = $_POST['checkbox_employee'];


		foreach ($employees as $employee) {
			$employee_id = sanitize_text_field($employee);

			$wpdb->query("DELETE FROM $wpdb->users WHERE ID=$employee_id");
		}

	    $url = esc_url( public_url('public.php?page=broodjes_options') );
	    if ( wp_redirect( $url ) ) {
	    	exit;
	    }
	}
}