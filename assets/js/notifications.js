$(document).ready(function(){

	// setInterval(function(){
	// 	// alert('hello');
 //        $.ajax({
 //            url: js_site_url('dashboard/checkTreshold'),
 //            type: 'POST',
 //            data: {},
 //            dataType: 'json',
 //           	success: function(json) {
	// 			      $('<audio id="chatAudio"><source src="admin/views/themes/tastyigniter-blue/resources/audio/sms-alert-5.mp3" type="audio/mpeg"></audio>').appendTo('body');
	// 			      $('#chatAudio')[0].play();
 //           		alert(json+' item(s) under treshold');
 //            }
 //        });
	// }, 600000);

    $(".Close").click(function(){
        $(".Modal").fadeOut();
    });

});