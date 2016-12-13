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
	
<section id="send_order_form_option">

	<h2>Verstuur bestelformulier</h2>
	
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
        </table>

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
        </table>

        <br>
    
		<input type="hidden" name="action" value="collect_sieges_for_submit">
		<input type="submit" name="select_for_form" class="button button-secondary" value="Verstuur">
	</form>

</section>