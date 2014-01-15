//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require websocket_rails/main
//= require_tree .

dispatcher = new WebSocketRails(window.document.location.host + '/websocket');