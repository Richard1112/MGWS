//消息提示
function makeMesDiv(obj){
	var divFormError = document.createElement('div');
	var formErrorContent = document.createElement('div');
	//var arrow = document.createElement('div');
	$(divFormError).addClass("formError");
	$(divFormError).addClass($(obj).attr("name"));
	$(formErrorContent).addClass("formErrorContent");
	//$(arrow).addClass("formErrorArrow");

	$("body").append(divFormError);
	//$(divFormError).append(arrow);
	$(divFormError).append(formErrorContent);
	//$(arrow).html('<div class="line10"></div><div class="line9"></div><div class="line8"></div><div class="line7"></div><div class="line6"></div><div class="line5"></div><div class="line4"></div><div class="line3"></div><div class="line2"></div><div class="line1"></div>');
	$(formErrorContent).html($(obj).text());

	callerTopPosition = $(obj).offset().top;
	callerleftPosition = $(obj).offset().left;
	callerWidth =  $(obj).width();
	callerHeight =  $(obj).height();
	inputHeight = $(divFormError).height();

	callerleftPosition = callerleftPosition + callerWidth +10;
	callerTopPosition = callerTopPosition  -inputHeight + 33;

	$(divFormError).css({
		top:callerTopPosition,
		left:callerleftPosition,
		opacity:0
	});
	$(divFormError).fadeTo("fast",0.8);
}

function removeMesDiv(){
	$("div[class='formError']").each(function(){
		$(this).remove();
	});
}
