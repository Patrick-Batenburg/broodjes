<?php

/**
 * Provide a admin area view for the plugin
 *
 * This file is used to markup the admin-facing aspects of the plugin.
 *
 * @link       www.silvas.nl
 * @since      1.0.0
 *
 * @package    Broodjes
 * @subpackage Broodjes/admin/partials
 */
?>

		<form action="<?php echo esc_url( admin_url('admin-post.php') ); ?>" method="post" enctype="multipart/form-data">	

			<label>Onderwerp:</label>
				<br>
				<input type="text" name="mail_subject" style="width:100%;"><br>

			<hr>
				<?php wp_editor( $content, $editor_name ); ?>
			<br>
			
				<input type="hidden" name="action" value="send_mail_to">
				<input type="submit" name="send_mail_to_users" class="button button_secondary"  value="Verstuur mail">
		</form>