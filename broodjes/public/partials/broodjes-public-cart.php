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

</form>

<section id="checkout_cart">

	<form action="<?php echo esc_url( ( admin_url('admin-post.php') ) ); ?>" method="post">	

		<table style="width:100%;">
            <tr>
                <td><b>Bestellingen</b></td>
                <td><b>Prijs</b></td>
                <td><b>Aantal</b></td>
            </tr>
			
			<?php foreach($ordersArray as $order) : ?>
			
			<tr>
				<td><?=$order->siege_name;?></td>
				<td>€ <?=$order->siege_price;?></td>
				<td style="width:100px;"></td>
			</tr>
	
			<?php endforeach; ?>

			<tr>
				<td>Totaal</td>
				<td>€ ...</td>
				<td></td>
			</tr>

        </table>

		<input type="hidden" name="action" value="submit_user_order">
		<input type="hidden" name="confirm_checkout" value="<?=$orders;?>">
		<input type="submit" name="submit_order" class="button button-secondary" value="Bestelling afronden">

		<a href="http://wamp.broodjes.ch" style="padding: 15px;">Afbreken</a>
	</form>

</section>