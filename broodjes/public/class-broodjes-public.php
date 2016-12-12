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
	 * The error message when user is not logged in.
	 *
	 * @since    1.0.0
	 * @access   private
	 * @var      string    $version    The current version of this plugin.
	 */
	private $error;

	/**
	 * Initialize the class and set its properties.
	 *
	 * @since    1.0.0
	 * @param      string    $broodjes       The name of the plugin.
	 * @param      string    $version    The version of this plugin.
	 */
	public function __construct( $broodjes, $version, $error ) {

		$this->broodjes = $broodjes;
		$this->version 	= $version;
		$this->error  	= $error;
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


	/**
	 * Shortcode of form
	 * @param  [type] $atts    [description]
	 * @param  string $content [description]
	 * @return [type]          [description]
	 */
	public function render_form($atts, $content = ""){

		ob_start();

		if(is_user_logged_in())
		{

			$file = plugin_dir_path(__DIR__) . "admin/data/bestelformulier.json";
			$data = file_get_contents($file);
			$obj  = json_decode($data, true);
		?>
			<section id="bestelformulier">
				<h1>Bestelformulier</h1>
				<form action="http://wamp.broodjes.ch/betalen/" method="post">	
					<?php foreach($obj as $result) : ?>
						
						<p>
							<?=$result['sieges']; ?>
							<span>
								€ <?=$result["price"]?>
								<input name="checkbox_order[]" type="checkbox" value="<?=$result['siege_id']?>" style="min-height:20px;min-width:20px;">
							</span>
							<hr>
						</p>
						
					<?php endforeach; ?>
					<input type="submit" name="submit_to_cart" class="button button-secondary" value="Bestellen">
				</form>
			</section>

		<?php
		}
		else
		{
			echo $this->error;
		}

		return ob_get_clean();

	}

	function render_cart($atts, $content = "")
	{
		ob_start();
		global $wpdb;

		// controleer of de gebruiker is ingelogged.
		if(is_user_logged_in())
		{

			// controleer of de bestelling niet leeg is.
			if(empty($_POST['checkbox_order']))
			{
				die('U heeft nog geen bestelling gemaakt.');
			}

			$orders = $_POST['checkbox_order'];		
		?>
			<section id="checkout_cart">
			<?php 
				foreach ($orders as $order) : 
					$cart = $wpdb->get_results("SELECT `siege_id`, `siege_name`, `siege_price` FROM `wp5415_sieges` WHERE siege_id='$order'") or die('Geen resultaten');

					$arr = explode('.', $cart[0]->siege_price);
					
					$i = 0;

					print $arr[0][$i];
					
			?> 
					<p>
						<?=$cart[0]->siege_name?>
						<span>
							€	<?=$cart[0]->siege_price;?>	
						</span>
					</p>
					<br>			

			<?php endforeach; ?>
			
			<hr>
			<b>
				Totaal:
				<span>€ <?php print $arr[0];?></span>
			</b>

			</section>
			
			<form action="<?php echo esc_url( ( admin_url('admin-post.php') ) ); ?>" method="post">	
				<input type="hidden" name="action" value="submit_user_order">
				<input type="hidden" name="confirm_checkout" value="<?=$orders;?>">
				<input type="submit" name="submit_order" class="button button-secondary" value="Bestelling afronden">
				<a href="http://wamp.broodjes.ch" style="padding: 15px;">Afbreken</a>
			</form>
		<?php
		}
		else
		{
			echo $this->error;
		}
		return ob_get_clean();
	}

	function handle_user_order()
	{
		global $wpdb; 

		date_default_timezone_set('Europe/Amsterdam');
		$user = wp_get_current_user();
		$orders = $_POST['confirm_checkout'];

		if(empty($orders))
		{
			die('U heeft geen bestelling gemaakt.');
		}

		foreach ($orders as $siege_id) 
		{
			$wpdb->query("INSERT INTO `wp5415_orders`(`order_id`, `user_id`, `order_date`) VALUES ($siege_id,$user->ID, NOW() )");
		}

	    if ( wp_redirect( get_site_url() ) ) {
	    	exit;
	    }
	}
}