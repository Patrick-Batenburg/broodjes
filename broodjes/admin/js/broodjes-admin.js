(function( $ ) {
	// 'use strict';

	/**
	 * All of the code for your admin-facing JavaScript source
	 * should reside in this file.
	 *
	 * Note: It has been assumed you will write jQuery code here, so the
	 * $ function reference has been prepared for usage within the scope
	 * of this function.
	 *
	 * This enables you to define handlers, for when the DOM is ready:
	 *
	 * $(function() {
	 *
	 * });
	 *
	 * When the window is loaded:
	 *
	 * $( window ).load(function() {
	 *
	 * });
	 *
	 * ...and/or other possibilities.
	 *
	 * Ideally, it is not considered best practise to attach more than a
	 * single DOM-ready or window-load handler for a particular page.
	 * Although scripts in the WordPress core, Plugins and Themes may be
	 * practising this, we should strive to set a better example in our own work.
	 */
	
	// ADMIN TABS
	$(document).ready(function() {

	  $('ul.tabs li').click(function() {
	    var tab_id = $(this).attr('data-tab');

	    $('ul.tabs li').removeClass('current');
	    $('.tab-content').removeClass('current');

	    $(this).addClass('current');
	    $("#" + tab_id).addClass('current');
	  });

		// SELECT ALL EMPLOYEES
	  $('input[name="all_employees"],input[name="geselecteerd"]').bind('click', function(){
		var status = $(this).is(':checked');
		$('input[name="checkbox_employee[]"]').attr('checked', status);
	 
	 });

	 	// SELECT ALL SIEGES
	  $('input[name="all_sieges"],input[name="select_sieges"]').bind('click', function(){
		var status = $(this).is(':checked');
		$('input[name="checkbox_sieges[]"]').attr('checked', status);
	 
	 });

	 	// SELECT ALL FORM CHECKBOXES
	  $('input[name="all_form_sieges"],input[name="select_form_sieges"]').bind('click', function(){
		var status = $(this).is(':checked');
		$('input[name="checkbox_sieges[]"]').attr('checked', status);
	 
	 });

	});

})( jQuery );

