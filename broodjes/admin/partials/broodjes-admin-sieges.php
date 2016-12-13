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

<section id="order_form_options">

	<h3>Voeg nieuw beleg toe.</h3>
	<form action="<?php echo esc_url( admin_url('admin-post.php') ); ?>" method="post">

		<label>Beleg:</label>
		    <input type="text" name="siege_name" required><br>
		
		<label>Prijs:</label>
		    <input type="number" name="siege_price_one" MIN="0" MAX="100" required>
		    <input type="number" name="siege_price_two" MIN="0" MAX="99" STEP="05">
		    	<br>
		    <input type="hidden" name="action" value="sieges_process_form"><br>
			<input type="submit" name="add_siege" class="button button_secondary" value="Opslaan">
	</form><br>
	<hr>
	<section id="sieges">
			<h3>Bestel formulier</h3>
	<form action="<?php echo esc_url( ( admin_url('admin-post.php') ) ); ?>" method="post">	

		 <table style="width:100%;">
		    <tr>
	            <td><b>Selecteer alles: </b></td>
	            <td></td>
	            <td><input type="checkbox" name="all_sieges" id="all_sieges" /></td>
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
	                <td><input name="checkbox_sieges[]" type="checkbox" name="select_sieges" value="<?=$siege->siege_id; ?>"></td>
	         </tr>
	            <?php endforeach; ?>
	    </table><br>
			
		<input type="hidden" name="action" value="siege_delete">
		<input type="submit" name="delete_sieges" class="button button-secondary" value="Verwijderen">
	</form><br>

</section>