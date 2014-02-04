//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require websocket_rails/main
//= require_tree .

dispatcher = new WebSocketRails(window.document.location.host + '/websocket');



document.write(platform.name+'<br>');
document.write(platform.version+'<br>');
document.write(platform.os+'<br>');
if (platform.product != null){
  document.write(platform.product+'<br>');
  document.write(platform.manufacturer+'<br>');
}

