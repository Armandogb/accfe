$(document).ready(function(){
	

	function findActive(slides){
		var activeId = -1;

		for(var i = 0; i < slides.length; i++){
			if(slides[i].style.display == "block") {
            	activeId = i;
        	}
		}

		return activeId;
	}
	
	function slideChange(option){
		
		var slides = $(".slide").toArray();
		var activeSlide = findActive(slides);

		slides[activeSlide].style.opacity = 0;
		slides[activeSlide].style.display = "none";

		if(option) {
			var makeActive = next(activeSlide, slides.length); 

    	} else {
        	var makeActive = prev(activeSlide, slides.length); 
    	}
    	slides[makeActive].style.display = "block";
    	slides[makeActive].style.opacity = 1;
	};

	function prev(num, arrayLength) {
    	if(num == 0) return arrayLength-1;
    	else return num-1;
	}

	function next(num, arrayLength) {
    	if(num == arrayLength-1) return 0;
    	else return num+1;
	}


	$(".forward-but").on("click",function(){
		slideChange(true);
	});

	$(".back-but").on("click",function(){
		slideChange(false);
	});

	setInterval(function () {
		slideChange(true);
    },4500);

});