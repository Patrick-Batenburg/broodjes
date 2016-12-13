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
<section id="organisation">

	<h3>Voeg organisatie toe</h3>

	<form action="<?php echo esc_url( admin_url('admin-post.php') ); ?>" method="post">

		<label>Bedrijfs naam:</label>
		    <input type="text" name="organisation_name" required>

		    <input type="hidden" name="action" value="organisation_process_form">
		    <select style="display: none;">
			   <?php wp_dropdown_roles( 'subscriber' ); ?>
			</select>
			<input type="submit" name="add_organisation" class="button button_secondary" value="Opslaan">
	</form>
	
	<hr>

	<form action="<?php echo esc_url( admin_url('admin-post.php') ); ?>" method="post">

		<h3>Organisaties</h3>

	    <table style="width:100%;">
		    <tr>
	            <td><b>Selecteer alles: </b></td>
	            <td></td>
	            <td><input type="checkbox" name="all_organisations" id="alles" /></td>
	        </tr>
	    </table><br>

	    <table style="width:100%;">
	        <tr>
	            <td><b>Bedrijfsnaam:</b></td>
	        </tr>
	        <tr>
			<?php foreach ($this->get_organisations() as $organisation): ?>
				 <td><?=$organisation->name;?></td>
	            <td><input name="checkbox_organisation[]" type="checkbox" id="select_organisation" name="select_organisations" value="<?=$organisation->id; ?>"></td>
	        </tr>
			<?php endforeach; ?>
			
	    </table><br>

		<input type="hidden" name="action" value="organisation_delete">
		<input type="submit" name="delete_organisation" class="button button-secondary" value="Verwijderen">
	</form>

</section>
