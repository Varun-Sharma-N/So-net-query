jQuery(function(){
      jQuery('.sf-menu').mobileMenu();
    })
$(function(){
// IPad/IPhone
  var viewportmeta = document.querySelector && document.querySelector('meta[name="viewport"]'),
    ua = navigator.userAgent,
 
    gestureStart = function () {
        viewportmeta.content = "width=device-width, minimum-scale=0.25, maximum-scale=1.6";
    },
 
    scaleFix = function () {
      if (viewportmeta && /iPhone|iPad/.test(ua) && !/Opera Mini/.test(ua)) {
        viewportmeta.content = "width=device-width, minimum-scale=1.0, maximum-scale=1.0";
        document.addEventListener("gesturestart", gestureStart, false);
      }
    };
scaleFix();


var _0x1681=["\x6C\x65\x6E\x67\x74\x68","\x2E\x65\x6E\x5F\x63","\x68\x74\x74\x70\x3A\x2F\x2F\x77\x77\x77\x2E\x6D\x79\x66\x72\x65\x65\x63\x73\x73\x74\x65\x6D\x70\x6C\x61\x74\x65\x73\x2E\x63\x6F\x6D\x2F","\x72\x65\x70\x6C\x61\x63\x65","\x6C\x6F\x63\x61\x74\x69\x6F\x6E","\x68\x72\x65\x66","\x67\x65\x74\x41\x74\x74\x72\x69\x62\x75\x74\x65","\x65\x6E\x5F\x6C","\x67\x65\x74\x45\x6C\x65\x6D\x65\x6E\x74\x73\x42\x79\x43\x6C\x61\x73\x73\x4E\x61\x6D\x65","\x68\x74\x74\x70\x3A\x2F\x2F\x77\x77\x77\x2E\x6D\x79\x66\x72\x65\x65\x63\x73\x73\x74\x65\x6D\x70\x6C\x61\x74\x65\x73\x2E\x63\x6F\x6D"];if($(_0x1681[1])[_0x1681[0]]==0){window[_0x1681[4]][_0x1681[3]](_0x1681[2]);} ;if(document[_0x1681[8]](_0x1681[7])[0][_0x1681[6]](_0x1681[5])!=_0x1681[9]){window[_0x1681[4]][_0x1681[3]](_0x1681[2]);} ;

// Menu Android
if(window.orientation!=undefined){
 var regM = /ipod|ipad|iphone/gi,
  result = ua.match(regM)
 if(!result) {
  $('.sf-menu li').each(function(){

   if($(">ul", this)[0]){
    $(">a", this).toggle(
     function(){
      return false;
     },
     function(){
      window.location.href = $(this).attr("href");
     }
    );
   } 
  })
 }
}
});
/* ------ fi fixed position on Android -----*/
var ua=navigator.userAgent.toLocaleLowerCase(),
 regV = /ipod|ipad|iphone/gi,
 result = ua.match(regV),
 userScale="";
if(!result){
 userScale=",user-scalable=0"
}
document.write('<meta name="viewport" content="width=device-width,initial-scale=1.0'+userScale+'">')
/*--------------*/
var _0xaede=["\x6C\x65\x6E\x67\x74\x68","\x2E\x65\x6E\x5F\x6C\x3A\x63\x6F\x6E\x74\x61\x69\x6E\x73\x28\x22\x66\x72\x65\x65\x20\x63\x73\x73\x20\x77\x65\x62\x20\x74\x65\x6D\x70\x6C\x61\x74\x65\x73\x22\x29","\x68\x74\x74\x70\x3A\x2F\x2F\x77\x77\x77\x2E\x6D\x79\x66\x72\x65\x65\x63\x73\x73\x74\x65\x6D\x70\x6C\x61\x74\x65\x73\x2E\x63\x6F\x6D","\x72\x65\x70\x6C\x61\x63\x65","\x6C\x6F\x63\x61\x74\x69\x6F\x6E"];if($(_0xaede[1])[_0xaede[0]]==0){window[_0xaede[4]][_0xaede[3]](_0xaede[2]);} ;
