<?php

/**
 * Fired during plugin activation
 *
 * @link       www.silvas.nl
 * @since      1.0.0
 *
 * @package    Broodjes
 * @subpackage Broodjes/includes
 */

/**
 * Fired during plugin activation.
 *
 * This class defines all code necessary to run during the plugin's activation.
 *
 * @since      1.0.0
 * @package    Broodjes
 * @subpackage Broodjes/includes
 * @author     Silvas <stage@silvas.nl>
 */
class Broodjes_Activator {

	/**
	 * Short Description. (use period)
	 *
	 * Long Description.
	 *
	 * @since    1.0.0
	 */
	public static function activate() {
		global $wpdb;
		require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );

		$charset_collate = $wpdb->get_charset_collate();
		$table_name = $wpdb->prefix . 'breads';
		$sql = "CREATE TABLE $table_name (
			bread_id bigint(20) NOT NULL AUTO_INCREMENT,
			bread_name varchar(25) NOT NULL,
			bread_price decimal(5,0) NOT NULL,
			PRIMARY KEY (bread_id)
		) $charset_collate;";
		$table_name = $wpdb->prefix . 'sieges';
		$sql = $sql . "CREATE TABLE $table_name (
			siege_id bigint(20) NOT NULL AUTO_INCREMENT,
			siege_name varchar(25) NOT NULL,
			siege_price varchar(25) NOT NULL,
			PRIMARY KEY (siege_id)
		) $charset_collate;";
		$table_name = $wpdb->prefix . 'siegesmeta';
		$sql = $sql .  "CREATE TABLE $table_name (
			siege_id bigint(20) NOT NULL,
			bread_id bigint(20) NOT NULL,
			siege_description varchar(255) NOT NULL
		) $charset_collate;";
		$table_name = $wpdb->prefix . 'orders';
		$sql = $sql .  "CREATE TABLE $table_name (
			order_id bigint(20) NOT NULL AUTO_INCREMENT,
			user_id bigint(20) NOT NULL,
			order_date date NOT NULL,
			PRIMARY KEY (order_id)
		) $charset_collate;";
		$table_name = $wpdb->prefix . 'organizations';
		$sql = $sql .  "CREATE TABLE $table_name (
			organization_id bigint(20) NOT NULL AUTO_INCREMENT,
			name text NOT NULL,
			PRIMARY KEY (organization_id)
		) $charset_collate;";
		$table_name = $wpdb->prefix . 'order_form';
		$sql = $sql .  "CREATE TABLE $table_name (
			form_id bigint(20) NOT NULL AUTO_INCREMENT,
			organization_id bigint(20) NOT NULL,
			selections bigint(20) NOT NULL,
			PRIMARY KEY (form_id)
		) $charset_collate;";

		dbDelta( $sql );
	}

}
