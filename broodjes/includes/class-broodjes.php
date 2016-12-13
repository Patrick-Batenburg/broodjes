<?php

/**
 * The file that defines the core plugin class
 *
 * A class definition that includes attributes and functions used across both the
 * public-facing side of the site and the admin area.
 *
 * @link       www.silvas.nl
 * @since      1.0.0
 *
 * @package    Broodjes
 * @subpackage Broodjes/includes
 */

/**
 * The core plugin class.
 *
 * This is used to define internationalization, admin-specific hooks, and
 * public-facing site hooks.
 *
 * Also maintains the unique identifier of this plugin as well as the current
 * version of the plugin.
 *
 * @since      1.0.0
 * @package    Broodjes
 * @subpackage Broodjes/includes
 * @author     Silvas <stage@silvas.nl>
 */
class Broodjes {

	/**
	 * The loader that's responsible for maintaining and registering all hooks that power
	 * the plugin.
	 *
	 * @since    1.0.0
	 * @access   protected
	 * @var      Broodjes_Loader    $loader    Maintains and registers all hooks for the plugin.
	 */
	protected $loader;

	/**
	 * The unique identifier of this plugin.
	 *
	 * @since    1.0.0
	 * @access   protected
	 * @var      string    $broodjes    The string used to uniquely identify this plugin.
	 */
	protected $broodjes;

	/**
	 * The current version of the plugin.
	 *
	 * @since    1.0.0
	 * @access   protected
	 * @var      string    $version    The current version of the plugin.
	 */
	protected $version;

	/**
	 * Retrieve the error message when not logged in.
	 *
	 * @since    1.0.0
	 * @access   protected
	 * @var      string    $version    The current version of the plugin.
	 */
	protected $error;

	/**
	 * Define the core functionality of the plugin.
	 *
	 * Set the plugin name and the plugin version that can be used throughout the plugin.
	 * Load the dependencies, define the locale, and set the hooks for the admin area and
	 * the public-facing side of the site.
	 *
	 * @since    1.0.0
	 */
	public function __construct() {

		$this->broodjes = 'broodjes';
		$this->version 	= '1.0.0';
		$this->error 	= 'U bent niet ingelogged';

		$this->load_dependencies();
		$this->set_locale();
		
		/*Admin Hooks*/
		$this->define_admin_hooks();
		$this->define_admin_organisations_hooks();
		$this->define_admin_sieges_hooks();
		$this->define_admin_scheme_hooks();
		$this->define_admin_mail_hooks();
		
		/*Public Hooks*/
		$this->define_public_hooks();
		$this->define_public_users_hooks();
		$this->define_public_employees_hooks();

	}

	/**
	 * Load the required dependencies for this plugin.
	 *
	 * Include the following files that make up the plugin:
	 *
	 * - Broodjes_Loader. Orchestrates the hooks of the plugin.
	 * - Broodjes_i18n. Defines internationalization functionality.
	 * - Broodjes_Admin. Defines all hooks for the admin area.
	 * - Broodjes_Public. Defines all hooks for the public side of the site.
	 *
	 * Create an instance of the loader which will be used to register the hooks
	 * with WordPress.
	 *
	 * @since    1.0.0
	 * @access   private
	 */
	private function load_dependencies() {

		/**
		 * The class responsible for orchestrating the actions and filters of the
		 * core plugin.
		 */
		require_once plugin_dir_path( dirname( __FILE__ ) ) . 'includes/class-broodjes-loader.php';

		/**
		 * The class responsible for defining internationalization functionality
		 * of the plugin.
		 */
		require_once plugin_dir_path( dirname( __FILE__ ) ) . 'includes/class-broodjes-i18n.php';

		/**
		 * The class responsible for defining all actions that occur in the admin area.
		 */
		require_once plugin_dir_path( dirname( __FILE__ ) ) . 'admin/class-broodjes-admin.php';

		/**
		 * The class responsible for defining all actions that occur in the admin organisations area.
		 */
		require_once plugin_dir_path( dirname( __FILE__ ) ) . 'admin/class-broodjes-admin-organisations.php';

		/**
		 * The class responsible for defining all actions that occur in the admin mail area.
		 */
		require_once plugin_dir_path( dirname( __FILE__ ) ) . 'admin/class-broodjes-admin-mail.php';

		/**
		 * The class responsible for defining all actions that occur in the admin scheme area.
		 */
		require_once plugin_dir_path( dirname( __FILE__ ) ) . 'admin/class-broodjes-admin-scheme.php';

		/**
		 * The class responsible for defining all actions that occur in the admin sieges area.
		 */
		require_once plugin_dir_path( dirname( __FILE__ ) ) . 'admin/class-broodjes-admin-sieges.php';

		/**
		 * The class responsible for defining all actions that occur in the public-facing
		 * side of the site.
		 */
		require_once plugin_dir_path( dirname( __FILE__ ) ) . 'public/class-broodjes-public.php';

		/**
		 * The class responsible for defining all actions that occur in the public users area.
		 */
		require_once plugin_dir_path( dirname( __FILE__ ) ) . 'public/class-broodjes-public-users.php';

		/**
		 * The class responsible for defining all actions that occur in the public employees area.
		 */
		require_once plugin_dir_path( dirname( __FILE__ ) ) . 'public/class-broodjes-public-employees.php';

		$this->loader = new Broodjes_Loader();

	}

	/**
	 * Define the locale for this plugin for internationalization.
	 *
	 * Uses the Broodjes_i18n class in order to set the domain and to register the hook
	 * with WordPress.
	 *
	 * @since    1.0.0
	 * @access   private
	 */
	private function set_locale() {

		$plugin_i18n = new Broodjes_i18n();

		$this->loader->add_action( 'plugins_loaded', $plugin_i18n, 'load_plugin_textdomain' );

	}

	/**
	 * Register all of the hooks related to the admin area functionality
	 * of the plugin.
	 *
	 * @since    1.0.0
	 * @access   private
	 */
	private function define_admin_hooks() {

		$plugin_admin = new Broodjes_Admin( $this->get_broodjes(), $this->get_version() );

		$this->loader->add_action( 'admin_enqueue_scripts', $plugin_admin, 'enqueue_styles' );
		$this->loader->add_action( 'admin_enqueue_scripts', $plugin_admin, 'enqueue_scripts' );

		$this->loader->add_action( 'admin_menu', $plugin_admin, 'add_menu' );

	}

	/**
	 * Register all of the hooks related to the admin employees area functionality
	 * of the plugin.
	 *
	 * @since    1.0.0
	 * @access   private
	 */
	private function define_admin_organisations_hooks() {

		$plugin_admin = new Broodjes_Admin_Organisations( $this->get_broodjes(), $this->get_version() );
		
		$this->loader->add_action( 'admin_post_organisation_process_form', $plugin_admin, 'add_organisation_process_form' );
		$this->loader->add_action( 'admin_post_organisation_delete', $plugin_admin, 'delete_organisation' );

	}

	/**
	 * Register all of the hooks related to the admin mail area functionality
	 * of the plugin.
	 *
	 * @since    1.0.0
	 * @access   private
	 */
	private function define_admin_mail_hooks() {

		$plugin_admin = new Broodjes_Admin_Mail( $this->get_broodjes(), $this->get_version() );
	}

	/**
	 * Register all of the hooks related to the admin scheme area functionality
	 * of the plugin.
	 *
	 * @since    1.0.0
	 * @access   private
	 */
	private function define_admin_scheme_hooks() {

		$plugin_admin = new Broodjes_Admin_Scheme( $this->get_broodjes(), $this->get_version() );

		$this->loader->add_action( 'admin_post_collect_sieges_for_submit', $plugin_admin, 'write_data_to_json');

	}

	/**
	 * Register all of the hooks related to the admin sieges area functionality
	 * of the plugin.
	 *
	 * @since    1.0.0
	 * @access   private
	 */
	private function define_admin_sieges_hooks() {

		$plugin_admin = new Broodjes_Admin_Sieges( $this->get_broodjes(), $this->get_version() );

		$this->loader->add_action( 'admin_post_sieges_process_form', $plugin_admin, 'add_siege_process_form' );
		$this->loader->add_action( 'admin_post_siege_delete', $plugin_admin, 'delete_sieges' );	

	}

	/**
	 * Register all of the hooks related to the public-facing functionality
	 * of the plugin.
	 *
	 * @since    1.0.0
	 * @access   private
	 */
	private function define_public_hooks() {

		$plugin_public = new Broodjes_Public( $this->get_broodjes(), $this->get_version(), $this->get_error() );

		$this->loader->add_action( 'wp_enqueue_scripts', $plugin_public, 'enqueue_styles' );
		$this->loader->add_action( 'wp_enqueue_scripts', $plugin_public, 'enqueue_scripts' );

		$this->loader->add_shortcode( 'bestelformulier', $plugin_public, 'render_form' );
		$this->loader->add_shortcode( 'checkout', $plugin_public, 'render_cart' );
		$this->loader->add_action( 'admin_post_submit_user_order', $plugin_public, 'handle_user_order' );
	}

	/**
	 * Register all of the hooks related to the public users area functionality
	 * of the plugin.
	 *
	 * @since    1.0.0
	 * @access   private
	 */
	private function define_public_users_hooks() {

		$plugin_public = new Broodjes_Public_Users( $this->get_broodjes(), $this->get_version(), $this->get_error() );

		$this->loader->add_action( 'init', $plugin_public, 'redirect_login_page' );
		$this->loader->add_action( 'wp_login_failed', $plugin_public, 'login_failed' );
		$this->loader->add_action( 'init', $plugin_public, 'redirect_login_page' );
		$this->loader->add_filter( 'authenticate', $plugin_public, 'verify_username_password', 1, 3 );
		$this->loader->add_shortcode( 'broodjes_user_login', $plugin_public, 'render_user_login' );

	}

	/**
	 * Register all of the hooks related to the admin employees area functionality
	 * of the plugin.
	 *
	 * @since    1.0.0
	 * @access   private
	 */
	private function define_public_employees_hooks() {

		$plugin_public = new Broodjes_Public_Employees( $this->get_broodjes(), $this->get_version() );
		
		$this->loader->add_action( 'admin_post_employee_process_form', $plugin_admin, 'add_employee_process_form' );
		$this->loader->add_action( 'admin_post_employee_delete', $plugin_admin, 'delete_employee' );

	}

	/**
	 * Run the loader to execute all of the hooks with WordPress.
	 *
	 * @since    1.0.0
	 */
	public function run() {
		$this->loader->run();		
	}

	/**
	 * The name of the plugin used to uniquely identify it within the context of
	 * WordPress and to define internationalization functionality.
	 *
	 * @since     1.0.0
	 * @return    string    The name of the plugin.
	 */
	public function get_broodjes() {
		return $this->broodjes;
	}

	/**
	 * The reference to the class that orchestrates the hooks with the plugin.
	 *
	 * @since     1.0.0
	 * @return    Broodjes_Loader    Orchestrates the hooks of the plugin.
	 */
	public function get_loader() {
		return $this->loader;
	}

	/**
	 * Retrieve the version number of the plugin.
	 *
	 * @since     1.0.0
	 * @return    string    The version number of the plugin.
	 */
	public function get_version() {
		return $this->version;
	}

	/**
	 * Retrieve the error message when not logged in.
	 *
	 * @since     1.0.0
	 * @return    string    The error message when a user is not logged in.
	 */
	public function get_error() {
		return $this->error;
	}

}
