!function(a){a(".navbar-nav li a").on("click",function(t){a(".navbar-nav li").removeClass("active"),a(this).closest("li").addClass("active");var e=a(this);a(e.attr("href")).length&&(a("html, body").stop().animate({scrollTop:a(e.attr("href")).offset().top},1500,"easeInOutExpo"),t.preventDefault())}),a(".navbar-collapse a").on("click",function(){a(".navbar-collapse.collapse").removeClass("in")})}(jQuery),$(document).on("click",'a[href^="#"]',function(a){a.preventDefault(),$("html, body").animate({scrollTop:$($.attr(this,"href")).offset().top},500)});