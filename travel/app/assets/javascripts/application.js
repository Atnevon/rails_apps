// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function () {
 var myLatlng = new google.maps.LatLng(-36.8487, 174.7521);

 function initialize(){
   var mapOptions = {
     center: myLatlng,
     zoom: 10,
     scrollwheel: false  
   };



   var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

     var contentString = '<img src="http://i.imgur.com/0fQ40zW.gif">';

	  var infowindow = new google.maps.InfoWindow({
	    content: contentString
	  });

   var marker = new google.maps.Marker({
   position: myLatlng,
   map: map,
   title: "I'm in Auzzieland!"
 	});

	 marker.addListener('click', function() {
	    infowindow.open(map, marker);
	  	});
	 }

 google.maps.event.addDomListener(window, 'load', initialize);
});