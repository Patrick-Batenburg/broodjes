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

<!-- Create a header in the default WordPress 'wrap' container -->
<div id="brd-wrapper">

	<h2><?php _e( 'Broodjes instellingen', 'broodjes' ); ?></h2>
	<?php settings_errors(); ?>

	<ul class="tabs">
		<li class="tab-link current" data-tab="tab-1"><span class="dashicons dashicons-building"></span>Organisatie toevoegen</li>
		<li class="tab-link" data-tab="tab-2"><span class="dashicons dashicons-list-view"></span>Bestel formulier</li>
		<li class="tab-link" data-tab="tab-3"><span class="dashicons dashicons-share-alt2"></span>Verstuur formulier</li>
		<li class="tab-link" data-tab="tab-4"><span class="dashicons dashicons-email"></span>Verstuur e-mail</li>
	</ul>

	<div id="tab-1" class="tab-content current">
		<?php 
			$organisation = new Broodjes_Admin_Organisations($this->broodjes, $this->version);
			$organisation->organisations_options();
		?>
	</div>
	<div id="tab-2" class="tab-content">
		<?php 
			$employees = new Broodjes_Admin_Sieges($this->broodjes, $this->version);
			$employees->menu_options();
		?>
	</div>
	<div id="tab-3" class="tab-content">
		<?php 
			$employees = new Broodjes_Admin_Scheme($this->broodjes, $this->version);
			$employees->send_form_options();
		?>
	</div>
	<div id="tab-4" class="tab-content">
		<?php 
			$employees = new Broodjes_Admin_Mail($this->broodjes, $this->version);
			$employees->send_mail_options();
		?>
	</div>

</div><!-- /.wrap -->