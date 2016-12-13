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

<section id="bestelformulier">

	<form action="<?php echo get_site_url() . '/betalen'?>" method="post">	

		<table style="width:100%;">
            <tr>
                <td><b>Beleg & Beverages</b></td>
                <td><b>Prijs</b></td>
                <td><b>Selecteer</b></td>
            </tr>
			
			<?php foreach($obj as $result) : ?>
			
			<tr>
				<td><?=$result['sieges']; ?></td>
				<td>€ <?=$result["price"]?></td>
				<td style="width: 100px;"><input name="checkbox_order[]" type="checkbox" value="<?=$result['siege_id']?>"></td>
			</tr>	
				
			<?php endforeach; ?>

			
        </table>

		<input type="submit" name="submit_to_cart" class="button button-secondary" value="Bestellen">
	</form>

</section>