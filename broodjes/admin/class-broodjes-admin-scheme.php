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
	public function __construct( $broodjes, $version ) {

		$this->broodjes = $broodjes;
		$this->version = $version;
	}

	public function send_form_options()
	{
		$sieges = new Broodjes_Admin_Sieges($this->broodjes, $this->version);
	?>  
		<h2>Verstuur bestelformulier</h2>
		
		<section id="sieges">
		
			<h3>Stel het formulier samen</h3>
			
			<form action="<?php echo esc_url( ( admin_url('admin-post.php') ) ); ?>" method="post">	

				 <table style="width:100%;">
	                <tr>
	                	<td>
	                		<b>Datum: </b>
	                		<?php date_default_timezone_set('Europe/Amsterdam'); echo date("d-m-Y");?>
	                	</td>
	                </tr>
				    <tr>
	                    <td>
	                    	<b>Selecteer alles: </b>
	                    </td>
	                    <td></td>
	                    <td>
	                    	<input type="checkbox" name="all_form_sieges" id="all_form_sieges" checked>
	                    </td>
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
	                        <td><input name="checkbox_scheme_sieges[]" type="checkbox" name="select_form_sieges" value="<?=$siege->siege_id; ?>" checked></td>
	                 </tr>
	                    <?php endforeach; ?>
	            </table><br>
	        
				<input type="hidden" name="action" value="collect_sieges_for_submit">
				<input type="submit" name="select_for_form" class="button button-secondary" value="Verstuur">
			</form>
			<br>
		</section>
	<?php

	}


    public function get_sieges()
	{
		global $wpdb;

		$sieges = $wpdb->get_results("SELECT * FROM `wp5415_sieges`") or print "Geen resultaten gevonden";

		return $sieges;
		
	}

	public function write_data_to_json()
	{
		global $wpdb;

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
			$data = $wpdb->get_results("SELECT * FROM `wp5415_sieges` WHERE siege_id=$selectedFromForm") or die("Geen resultaten.");

		
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