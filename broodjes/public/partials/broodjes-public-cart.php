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
				<td><b>Subtotaal</b></td>
                <td><b>Aantal</b></td>
            </tr>
			
			<?php foreach($ordersArray as $order) : ?>

			<?php
				$total_number = $_POST['sieges_total_number'];
				$number1 = $_POST['sieges_total_number']; 
				$number2 = $order->siege_price;
				$subtotal = $number1*$number2;
			?>
			
			<tr>
				<td><?=$order->siege_name;?></td>
				<td>€ <?=$order->siege_price;?></td>
				<td>€ <?php echo number_format($subtotal, 2, ',', ''); ?></td>
				<td style="width: 100px;"><input name="numm" type="number" value="<?= $total_number; ?>"></td>
			</tr>
		
			<?php endforeach; ?>

			<tr>
				<td>Totaal</td>
				<td></td>
				<td>€</td>
			</tr>

        </table>

		

		<input type="hidden" name="action" value="submit_user_order">
		<input type="hidden" name="confirm_checkout" value="<?=$orders;?>">
		<input type="submit" name="submit_order" class="button button-secondary" value="Bestelling afronden">

		<a href="http://wamp.broodjes.ch" style="padding: 15px;">Afbreken</a>
	</form>

</section>