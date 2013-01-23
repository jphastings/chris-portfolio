$(document).ready(function() {
	$('.panel.image').toggle(function(){
		$(this).addClass('flip');
	},function(){
		$(this).removeClass('flip');
	});
})