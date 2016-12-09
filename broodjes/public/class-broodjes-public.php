<?php

/**
 * The public-facing functionality of the plugin.
 *
 * @link       www.silvas.nl
 * @since      1.0.0
 *
 * @package    Broodjes
 * @subpackage Broodjes/public
 */

/**
 * The public-facing functionality of the plugin.
 *
 * Defines the plugin name, version, and two examples hooks for how to
 * enqueue the admin-specific stylesheet and JavaScript.
 *
 * @package    Broodjes
 * @subpackage Broodjes/public
 * @author     Silvas <stage@silvas.nl>
 */
class Broodjes_Public {

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
	 * @param      string    $broodjes       The name of the plugin.
	 * @param      string    $version    The version of this plugin.
	 */
	public function __construct( $broodjes, $version ) {

		$this->broodjes = $broodjes;
		$this->version = $version;

	}

	/**
	 * Register the stylesheets for the public-facing side of the site.
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

		wp_enqueue_style( $this->broodjes, plugin_dir_url( __FILE__ ) . 'css/broodjes-public.css', array(), $this->version, 'all' );

	}

	/**
	 * Register the JavaScript for the public-facing side of the site.
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

		wp_enqueue_script( $this->broodjes, plugin_dir_url( __FILE__ ) . 'js/broodjes-public.js', array( 'jquery' ), $this->version, false );

	}



	public function render_form($atts, $content = ""){

		$file = plugin_dir_path(__DIR__) . "admin/data/bestelformulier.json";
		//$file = plugins_url($this->broodjes . "/admin/data/bestelformulier.json");

		$data = file_get_contents($file);
		$obj  = json_decode($data, true);
	?>
		<style type="text/css">
			#bestelformulier {
				width: 100%;
				height: auto;
				/*border: 1px solid red;*/
				padding: 25px;
			}
			#bestelformulier h1 {
				margin-bottom: 45px;
			}
			#bestelformulier p {
				font-size: 18pt;
			}
			#bestelformulier p span {
				float: right;
			}
		</style>
		<section id="bestelformulier">
			<h1>Bestelformulier</h1>
			<?php foreach($obj as $result) : ?>
			<?php //echo '<pre>' . print_r($obj, true) . '</pre>'; ?>
				
				<p>
					<?=$result['sieges']; ?>
					<span>
						<?=$result["price"]?>
						<input name="select_order" type="checkbox" style="min-height:20px;min-width:20px;">
					</span>
					<hr>
				</p>
				
			<?php endforeach; ?>
		</section>
	<?php

	}
}