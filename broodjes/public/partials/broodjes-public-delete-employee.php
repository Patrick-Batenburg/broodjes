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

<section id="employee">
	<form action="<?php echo esc_url( admin_url('public-post.php') ); ?>" method="post">

        <table style="width:100%;">
            <tr>
                <td><b>Naam:</b></td>
                <td><b>Email:</b></td>
                <td><span class="dashicons dashicons-trash"></span></td>
            </tr>
           
			<?php foreach ($this->get_employees() as $employee): ?>
			 <tr>
                <td><?php echo $employee->user_login . "</td><td> " . $employee->user_email . "</td>";?>
                <td><input name="checkbox_employee[]" type="checkbox" id="select_employees" name="select_employees" value="<?=$employee->ID; ?>"></td>
            </tr>
			<?php endforeach; ?>
			<tr>
                <td><b>Selecteer alles: </b></td>
                <td></td>
                <td><input type="checkbox" name="all_employees" id="alles" /></td>
            </tr>
			
        </table>

		<input type="hidden" name="action" value="employee_delete">
		<input type="submit" name="delete_employee" class="button button-secondary" value="Verwijderen">
	</form>
</section>