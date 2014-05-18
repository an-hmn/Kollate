$(document).ready(function () {

  // ---------------------
  // Color Thief demo code
  // ---------------------
  var imageArray = (<%= image_tag @image.source %>);

  // Render example images
  var examplesHTML = Mustache.to_html($('#image-section-template').html(), imageArray);
  $('#example-images').append(examplesHTML);

  // Event handlers
  $('.run-functions-button').on('click', function(event) {
    var $this = $(this);
    $this.text('...');
    var $imageSection     = $this.closest('.image-section');
    var $colorThiefOutput = $imageSection.find('.color-thief-output');
    var $targetimage      = $imageSection.find('.target-image');
    showColorsForImage($targetimage, $imageSection);
  });

  var colorThief = new ColorThief();

  // Run Color Thief functions and display results below image.
  // We also log execution time of functions for display.
  var showColorsForImage = function($image, $imageSection ) {
    var image                    = $image[0];
    var start                    = Date.now();
    var color                    = colorThief.getColor(image);
    var palette                  = colorThief.getPalette(image);

    var colorThiefOutput = {
      color: color,
      palette: palette,
    };
    var colorThiefOuputHTML = Mustache.to_html($('#color-thief-output-template').html(), colorThiefOutput);

    $imageSection.addClass('with-color-thief-output');
    $imageSection.find('.run-functions-button').addClass('hide');

    setTimeout(function(){
      $imageSection.find('.color-thief-output').append(colorThiefOuputHTML).slideDown();
      // If the color-thief-output div is not in the viewport or cut off, scroll down.
      var windowHeight          = $(window).height();
      var currentScrollPosition = $('body').scrollTop()
      var outputOffsetTop       = $imageSection.find('.color-thief-output').offset().top
      if ((currentScrollPosition < outputOffsetTop) && (currentScrollPosition + windowHeight - 250 < outputOffsetTop)) {
         $('body').animate({scrollTop: outputOffsetTop - windowHeight + 200 + "px"});
      }
    }, 300);
  };

  // This is not good practice. :-P
  function isMobile(){
    // if we want a more complete list use this: http://detectmobilebrowsers.com/
    // str.test() is more efficent than str.match()
    // remember str.test is case sensitive
    var isMobile = (/iphone|ipod|ipad|android|ie|blackberry|fennec/).test
         (navigator.userAgent.toLowerCase());
    return isMobile;
}

});
