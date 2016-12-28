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
class Broodjes_Admin_Scheme {

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
	public function __construct( $broodjes, $version ) 
	{

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

	public function send_form_options()
	{
		$sieges = new Broodjes_Admin_Sieges($this->broodjes, $this->version);
	
		include $this->view('broodjes-admin-scheme.php');
	}


    public function get_sieges()
	{
		global $wpdb;

		$table = $this->table('sieges');

		$sieges = $wpdb->get_results("SELECT * FROM `$table` ") or print "Geen resultaten gevonden";

		return $sieges;
		
	}

	public function write_data_to_json()
	{
		global $wpdb;

		$table = $this->table('sieges');
		$form = $_POST['checkbox_scheme_sieges'];
		$file = plugin_dir_path(__FILE__) . "data/bestelformulier.json";
		$tempArray = array();

		// Give error when submitted form is empty.
		if(empty($form)) 
		{
			die('Er kunnen geen bestellingen worden gemaakt');
		}

		foreach ($form as $selectedFromForm) 
		{
			$data = $wpdb->get_results("SELECT * FROM `$table` WHERE siege_id=$selectedFromForm") or die("Geen resultaten.");

		
			$jsonString = array(
				'siege_id'	=> $data[0]->siege_id,
				'sieges' 	=> $data[0]->siege_name,
				'price' 	=> $data[0]->siege_price			
			);


			array_push($tempArray, $jsonString);
		}

		$obj .= wp_json_encode($tempArray, JSON_PRETTY_PRINT);

		if(file_put_contents($file, $obj)){
	    	$url = esc_url( admin_url('admin.php?page=broodjes_options') );
		    if ( wp_redirect( $url ) ) {
		    	die;
		    }
	    }
	    else
	    { 
	    	die('Problemen bij het opslaan van gegevens.');
	  	}
		  
	}
   
}