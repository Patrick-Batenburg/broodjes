<?php

/**
 * Provide a public-facing view for the plugin
 *
 * This file is used to markup the public-facing aspects of the plugin.
 *
 * @link       www.silvas.nl
 * @since      1.0.0
 *
 * @package    Broodjes
 * @subpackage Broodjes/public/partials
 */
?>

<form action="<?php echo esc_url( admin_url('public-post.php') ); ?>" method="post">

	    <input type="text" name="employee_name" placeholder="Naam" required>
	    <input type="email" name="employee_email" placeholder="email" required>
	    <input type="password" name="employee_password" placeholder="Wachtwoord" required>
	    <input type="password" name="employee_password_confirm" placeholder="Herhaal wachtwoord" required>

	    <input type="hidden" name="action" value="employee_process_form">
	    <select style="display: none;">
		   <?php //wp_dropdown_roles( 'subscriber' ); ?>
		</select>
		<input type="submit" name="add_employee" class="button button_secondary" value="Opslaan">

</form>