
// body = document.getElementsByTagName("body");

// body.style.backgroundColor="red";

document.body.style.backgroundColor = "#FDF8FF";


$(document).ready(function() {
   $("#shade1").add("#shade3").click(function() {
   $(this).fadeTo( "slow", 0.33 );
	});
});

$(document).ready(function() {
   $("#shade2").add("#shade4").click(function() {
   $(this).effect('bounce',{times:3},500);	
   });
});

$(document).ready(function() {
   $("#shade5").add("#shade7").click(function() {
   $(this).effect('slide');	
   });
});

$(document).ready(function() {
   $("#shade6").add("#shade8").click(function() {
   $(this).effect('explode');	
   });
});

$(document).ready(function() {
   $("#shade9").add("#shade11").mouseenter(function() {
   $(this).addClass('highlighted');	
   });
});

$(document).ready(function() {
   $("#shade9").add("#shade11").mouseleave(function() {
   $(this).removeClass('highlighted');	
   });
});

$(document).ready(function() {
   $("#shade9").add("#shade11").click(function() {
      $(this).effect('bounce',{times:10},100);	
   });
});


$(document).ready(function(){
$("#shade10").click(function() {
    $(this).hide();	
});
});

$(document).ready(function(){
$("#shade12").click(function() {
    $(this).toggle(1000);	
});
});


$(document).ready(function() {
	$("div").height("100px");
	$("div").width("100px");
	$("#shade1").css("backgroundColor", "#8B7B8B");
	$("#shade2").css("backgroundColor", "#8B668B");
	$("#shade3").css("backgroundColor", "#EED2EE");
	$("#shade4").css("backgroundColor", "#CDB5CD");
	$("#shade5").css("backgroundColor", "#816687");
	$("#shade6").css("backgroundColor", "#BDA0CB");
	$("#shade7").css("backgroundColor", "#9975b9");
	$("#shade8").css("backgroundColor", "#D3BECF");
	$("#shade9").css("backgroundColor", "#FFE1FF");
	$("#shade10").css("backgroundColor", "#330f53");
	$("#shade11").css("backgroundColor", "#DDD1E7");
	$("#shade12").css("backgroundColor", "#694489");
});


	
