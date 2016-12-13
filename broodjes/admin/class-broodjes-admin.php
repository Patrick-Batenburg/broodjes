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
class Broodjes_Admin {

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

	/**
	 * Register the stylesheets for the admin area.
	 *
	 * @since    1.0.0
	 */
	public function enqueue_styles() {

		/**
		 * This function is provided for demonstration purposes only.
		 *
		 * An instance of this class should be passed to the run() function
		 * defined in Broodjes_Loader as all of the hooks are defined
		 * in that particular class.
		 *
		 * The Broodjes_Loader will then create the relationship
		 * between the defined hooks and the functions defined in this
		 * class.
		 */

		wp_enqueue_style( $this->broodjes, plugin_dir_url( __FILE__ ) . 'css/broodjes-admin.css', array(), $this->version, 'all' );

	}

	/**
	 * Register the JavaScript for the admin area.
	 *
	 * @since    1.0.0
	 */
	public function enqueue_scripts() {

		/**
		 * This function is provided for demonstration purposes only.
		 *
		 * An instance of this class should be passed to the run() function
		 * defined in Broodjes_Loader as all of the hooks are defined
		 * in that particular class.
		 *
		 * The Broodjes_Loader will then create the relationship
		 * between the defined hooks and the functions defined in this
		 * class.
		 */

		wp_enqueue_script( $this->broodjes, plugin_dir_url( __FILE__ ) . 'js/broodjes-admin.js', array( 'jquery' ), $this->version, false );

	}

	public function add_menu() {
		//Add the menu to the Plugins set of menu items
		add_menu_page(
			'Broodjes gebruikers instellingen', 			// The title to be displayed in the browser window for this page.
			'Broodjes',										// The text to be displayed for this menu item
			'manage_options',								// Which type of users can see this menu item
			'broodjes_options',								// The unique ID - that is, the slug - for this menu item
			array( $this, 'render_options_page_content'),	// The name of the function to call when rendering this menu's page
			'dashicons-clipboard'
		);
	}

	public function render_options_page_content()
	{
		include $this->view('broodjes-admin.php');
	}

}