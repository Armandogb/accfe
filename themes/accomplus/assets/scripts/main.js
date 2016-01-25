/* ========================================================================
 * DOM-based Routing
 * Based on http://goo.gl/EUTi53 by Paul Irish
 *
 * Only fires on body classes that match. If a body class contains a dash,
 * replace the dash with an underscore when adding it to the object below.
 *
 * .noConflict()
 * The routing is enclosed within an anonymous function so that you can
 * always reference jQuery with $, even when in .noConflict() mode.
 * ======================================================================== */

(function($) {

  // Use this variable to set up the common and page specific functions. If you
  // rename this variable, you will also need to rename the namespace below.
  var Sage = {
    // All pages
    'common': {
      init: function() {
        // JavaScript to be fired on all pages
      },
      finalize: function() {
      
        
      }
    },
    // Home page
    'home': {
      init: function() {
        // JavaScript to be fired on the home page
      },
      finalize: function() {  

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
 

      }
    },
    // About us page, note the change from about-us to about_us.
    'about_us': {
      init: function() {
        // JavaScript to be fired on the about us page
      }
    }
  };

  // The routing fires all common scripts, followed by the page specific scripts.
  // Add additional events for more control over timing e.g. a finalize event
  var UTIL = {
    fire: function(func, funcname, args) {
      var fire;
      var namespace = Sage;
      funcname = (funcname === undefined) ? 'init' : funcname;
      fire = func !== '';
      fire = fire && namespace[func];
      fire = fire && typeof namespace[func][funcname] === 'function';

      if (fire) {
        namespace[func][funcname](args);
      }
    },
    loadEvents: function() {
      // Fire common init JS
      UTIL.fire('common');

      // Fire page-specific init JS, and then finalize JS
      $.each(document.body.className.replace(/-/g, '_').split(/\s+/), function(i, classnm) {
        UTIL.fire(classnm);
        UTIL.fire(classnm, 'finalize');
      });

      // Fire common finalize JS
      UTIL.fire('common', 'finalize');
    }
  };

  // Load Events
  $(document).ready(UTIL.loadEvents);

})(jQuery); // Fully reference jQuery after this point.
