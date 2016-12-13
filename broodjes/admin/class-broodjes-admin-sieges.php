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
		$this->version 	= $version;

	}

	/**
	 * Get tablename with prefix
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

    public function menu_options()
	{
		include $this->view('broodjes-admin-sieges.php');
	}

	public function add_siege_process_form()
	{
		global $wpdb; 

		$table = $this->table('sieges');

		$price_one = $_POST['siege_price_one'];
		$price_two = $_POST['siege_price_two'];

		if(is_numeric($price_one) === false || is_numeric($price_two) === false) {
			die("Prijs input is niet geldig");
		}

	    $siege_name = sanitize_text_field($_POST['siege_name']);
	    $siege_price = sanitize_text_field($price_one) . "." . sanitize_text_field($price_two);

	    $wpdb->query("INSERT INTO `$table`(`siege_name`, `siege_price`) VALUES ( '$siege_name', '$siege_price')");


	    $url = esc_url( admin_url('admin.php?page=broodjes_options') );
	    if ( wp_redirect( $url ) ) {
	    	exit;
	    }
	}

	public function get_sieges()
	{
		global $wpdb;

		$table = $this->table('sieges');

		$sieges = $wpdb->get_results("SELECT * FROM `$table`") or print "Geen resultaten gevonden";

		return $sieges;
	}

	public function delete_sieges()
	{
		global $wpdb;

		$table = $this->table('sieges');

		$sieges = $_POST['checkbox_sieges'];

		foreach ($sieges as $siege) {
			$siege_id = sanitize_text_field($siege);
			$wpdb->query("DELETE FROM `$table` WHERE siege_id=$siege_id");
		}

	    $url = esc_url( admin_url('admin.php?page=broodjes_options') );
	    if ( wp_redirect( $url ) ) {
	    	exit;
	    }
	}
}