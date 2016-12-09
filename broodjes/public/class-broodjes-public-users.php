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
class Broodjes_Public_Users {

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

	public function render_user_login()
	{

	    $args = array(
	        'redirect' => home_url(), 
	        'id_username' => 'user',
	        'id_password' => 'pass',
	        'label_username' => __( 'Emailadres' ),
	        'label_password' => __( 'Wachtwoord' ),
	        'label_remember' => __( 'Onthoud mij' ),
		    'label_log_in'   => __( 'Inloggen' ),
	        'id_remember'    => 'rememberme',
	    );
	    
	     wp_login_form( $args ); 

    	$login  = (isset($_GET['login']) ) ? $_GET['login'] : 0;

	    if ( $login === "failed" ) {
	    echo '<p class="login-msg"><strong>ERROR:</strong> Ongeldige gebruikersnaam en/of wachtwoord.</p>';
	    } elseif ( $login === "empty" ) {
	    echo '<p class="login-msg"><strong>ERROR:</strong> Gebruikersnaam of wachtwoord is leeg. </p>';
	    } elseif ( $login === "false" ) {
	    echo '<p class="login-msg"><strong>ERROR:</strong> U bent uitgelogd.</p>';
	    }
	}

	public function redirect_login_page() 
    {
        
        $login_page  = home_url( '/login/' );
        $page_viewed = basename($_SERVER['REQUEST_URI']);
        
        if( $page_viewed == "wp-login.php" && $_SERVER['REQUEST_METHOD'] == 'GET') {
            wp_redirect($login_page);
            exit;
        }

    }

    public function login_failed() {
        $login_page  = home_url( '/login/' );
        wp_redirect( $login_page . '?login=failed' );
        exit;
    }
    
    public function verify_username_password( $user, $username, $password ) {
        $login_page  = home_url( '/login/' );
            if( $username == "" || $password == "" ) {
                wp_redirect( $login_page . "?login=empty" );
                exit;
            }
    }
}
