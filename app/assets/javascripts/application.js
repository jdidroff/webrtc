//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require websocket_rails/main
//= require_tree .

dispatcher = new WebSocketRails(window.document.location.host + '/websocket');




var deviceDetection = function () { 
var osVersion, 
device, 
deviceType, 
userAgent, 
isSmartphoneOrTablet; 

device = (navigator.userAgent).match(/Android|iPhone|iPad|iPod|Nokia/i); 

if ( /Android/i.test(device) ) { 
    if ( !/mobile/i.test(navigator.userAgent) ) { 
        deviceType = 'tablet'; 
    } else { 
        deviceType = 'phone'; 
    } 

    osVersion = (navigator.userAgent).match(/Android\s+([\d\.]+)/i); 
    osVersion = osVersion[0]; 
    osVersion = osVersion.replace('Android ', ''); 

} else if ( /Nokia/i.test(device) ) { 
    deviceType = 'phone'; 
    osVersion = (navigator.userAgent).match(/OS\s+([\d\_]+)/i); 
    osVersion = osVersion[0]; 
    osVersion = osVersion.replace(/_/g, '.'); 
    osVersion = osVersion.replace('OS ', ''); 

} else if ( /iPhone/i.test(device) ) { 
    deviceType = 'phone'; 
    osVersion = (navigator.userAgent).match(/OS\s+([\d\_]+)/i); 
    osVersion = osVersion[0]; 
    osVersion = osVersion.replace(/_/g, '.'); 
    osVersion = osVersion.replace('OS ', ''); 

} else if ( /iPad/i.test(device) ) { 
    deviceType = 'tablet'; 
    osVersion = (navigator.userAgent).match(/OS\s+([\d\_]+)/i); 
    osVersion = osVersion[0]; 
    osVersion = osVersion.replace(/_/g, '.'); 
    osVersion = osVersion.replace('OS ', ''); 
} 
isSmartphoneOrTablet = /Android|webOS|iPhone|iPad|iPod|BlackBerry|Nokia/i.test(navigator.userAgent); 
userAgent = navigator.userAgent; 

return { 'isSmartphoneOrTablet': isSmartphoneOrTablet, 
         'device': device, 
         'osVersion': osVersion, 
         'userAgent': userAgent, 
         'deviceType': deviceType 
        }; 
}();

document.write(deviceDetection.userAgent+'<br>');
