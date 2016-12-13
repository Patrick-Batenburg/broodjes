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

	}

	/* Get tablename with prefix
	 * @param  string $table_name tablename
	 * @return string             tablename with prefix
	 */
	protected function table( $table_name )
	{
		global $wpdb;

		return $wpdb->prefix . $table_name;
	}

	/**
	 * Include the file from the view
	 * 
	 * @param  string $file file from the view.
	 * @return string       path to file from the view.
	 */
	protected function view( $file )
	{
		$path = "partials/" . $file;

		return $path;
	}

    public function organisations_options()
	{
		include $this->view('broodjes-admin-organisations.php');
	}

	public function add_organisation_process_form()
	{
		global $wpdb; 

		$table = $this->table('organisations');

	    // securing the input. NEVER TRUST USER INPUT! 
	    //https://developer.wordpress.org/plugins/security/securing-input/
	    $organisation_name = sanitize_text_field($_POST['organisation_name']);

		if ( !empty($organisation_name) ) 
		{
			$wpdb->query("INSERT INTO `$table`(`name`) VALUES ( '$organisation_name')");

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

		$table = $this->table('organisations');
		$organisations = $wpdb->get_results("SELECT * FROM `$table` ") or die;

		return $organisations;
	}

    public function delete_organisation()
	{
		global $wpdb;

		$table = $this->table('organisations');
		$organisations = $_POST['checkbox_organisation'];

		foreach ($organisations as $organisation) {
			$organisation_id = sanitize_text_field($organisation);

			$wpdb->query("DELETE FROM `$table` WHERE ID=$organisation_id");
		}

	    $url = esc_url( admin_url('admin.php?page=broodjes_options') );
	    if ( wp_redirect( $url ) ) {
	    	exit;
	    }
	}
}