<?php

/**
 * The admin-mail-specific functionality of the plugin.
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
class Broodjes_Admin_Mail {

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

	public function send_mail_options()
	{
		$content = '';
		$editor_name = 'mycustomeditor';

		include $this->view('broodjes-admin-mail.php');
	}

	public function send_mail_to_users()
	{
		$tempArr = [];

		foreach ( $this->get_users_mail() as $user ) {

			$string = $user->user_email;

			array_push($tempArr, $string);
		}

		$to = $tempArr;
		$subject = $_POST['mail_subject'];
		$body = $_POST['mycustomeditor'];
		$headers = array('From: <williamlindhout@gmail.com');
		
		wp_mail( $to, $subject, $body, $headers );

		$url = esc_url( admin_url('admin.php?page=broodjes_options') );
	    if ( wp_redirect( $url ) ) {
	    	exit;
	    }

	}

	public function get_users_mail()
	{
		global $wpdb;

		$user_mail = $wpdb->get_results("SELECT `user_email` FROM `wp5415_users` ") or die;

		return $user_mail;
	}

}