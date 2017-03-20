// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require turbolinks
//= require jquery
//= require jquery_ujs
//= require ahoy
//= require turbolinks-jquery
//= require materialize-sprockets
//= require materialize-tags
//= require Sortable/Sortable

//= require visibility_toggle
//= require proposals
//= require messages
//= require searchbar
//= require sortable_cards
//= require assets
//= require quotations
//= require gravity_modal
//= require cable
//= require notice_closer
//= require cable

//= require promise-polyfill
//= require evaporatejs
//= require direct_asset_upload
//= require direct_avatar_upload
//= require direct_attachment_upload

//= require emojis

//= require_tree ./artists
//= require_tree ./commissioners
//= require_tree ./proposals
//= require_tree ./users

function notify(message) {
  Materialize.toast(message, 4000);
}

$(document).on('turbolinks:load ajax:success', function() {
  $('select').material_select();
  $(".button-collapse").sideNav();
  $('.modal').modal();
  $('.materialboxed').materialbox();
  $('.dropdown-button').dropdown();
  $('.collapsible').collapsible();
  $('.tooltipped').tooltip();

  $('.datepicker').pickadate();

  if (Materialize.updateTextFields) {
    Materialize.updateTextFields();
  }
  Waves.displayEffect();

  $('[data-check]').click(function(e) {
      checkbox = $("#" + $(e.target).data('check'));
      checkbox.prop('checked', !checkbox.prop('checked'));
      e.stopPropagation();
  });

  $('input.character_counter, textarea.character_counter').characterCounter();

  $(".n-tag").keydown();

  ahoy.trackView();
});
