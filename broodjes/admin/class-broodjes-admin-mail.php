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

	public function send_mail_options()
	{
		$content = '';
		$editor_id = 'mycustomeditor';
	?>
		<form action="<?php echo esc_url( ( admin_url('admin-post.php') ) ); ?>" method="post" enctype="multipart/form-data">		

			<label>Onderwerp:</label>
				<br>
				<input type="text" name="mail_subject" style="width:100%;"><br>

			<hr>
				<?php wp_editor( $content, $editor_id ); ?>
			<br>
				<input type="hidden" name="send_mail_to">
				<input type="submit" name="send_mail" class="button button_secondary"  value="Verstuur mail">
		</form>
	<?php
	}

}