(function($) {
  $.fn.backToTop = function(options)
  {
	
	//Default options
	var settings = $.extend({
		iconName : 'fas fa-chevron-up',
		trigger : 300,
		fxName : 'fade',
		fxTransitionDuration : 300,
		scrollDuration : 300
	}, options );	
	
	var btn = this,
		icon = settings.iconName,	
		trigger = settings.trigger,
		fxName = settings.fxName,
		duration = settings.fxTransitionDuration,
		scrollDuration = settings.scrollDuration;  
		
    this.each(function() {
		btn.prepend('<svg width="29" height="36" viewBox="0 0 29 36" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M14.4998 31.2002C15.0337 31.2002 15.4665 30.6629 15.4665 30.0002V8.89723L21.5495 16.4487C21.9271 16.9174 22.5392 16.9174 22.9168 16.4487C23.2942 15.9801 23.2942 15.2203 22.9168 14.7517L15.1833 5.15156C15.0021 4.92668 14.7562 4.80019 14.4998 4.80019C14.2434 4.80019 13.9975 4.92668 13.8163 5.15156L6.08295 14.7517C5.70542 15.2203 5.70542 15.9801 6.08295 16.4487C6.46045 16.9174 7.0725 16.9174 7.45001 16.4487L13.5331 8.89723V30.0002C13.5331 30.6629 13.9659 31.2002 14.4998 31.2002Z" fill="white"/></svg>')
		btn.addClass(fxName);
		btn.css({
			transitionDuration: duration+'ms'
		});
        
		$(window).scroll(function(){
			
			if($(window).scrollTop() > trigger){
				btn.addClass('bck-on');
	
			}else{
				btn.removeClass('bck-on');
			}
			
		
		});		
		
		btn.on('click',function(e){		
			e.preventDefault();
			$('html,body').animate({
				scrollTop: 0
			}, scrollDuration);			
		});		
	 
    });		

	return this;	
  };
})(jQuery);