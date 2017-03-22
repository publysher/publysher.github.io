$(document).ready(function(){
	$('#menu-burger').click(function(){
		$(this).toggleClass('open');
		$("#logoColor").toggleClass("logo-logo__color");
		$("body").toggleClass("menu__back");
		$("htl").toggleClass("html__color");
		$("#menuMobile").slideToggle(400);

	});
});
