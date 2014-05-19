$(document).ready(function () {

  // ---------------------
  // Color Thief demo code
  // ---------------------
  
  // Run Color Thief functions and display results below image.
  // We also log execution time of functions for display.

  var $image = $("#target");
  $image.load(function () {
    var colorThief = new ColorThief();

    var image                    = $image[0];
    var start                    = Date.now();
    var color                    = colorThief.getColor(image);
    var palette                  = colorThief.getPalette(image);

    var colorThiefOutput = {
      color: color,
      palette: palette,
    };

    var colorThiefOuputHTML = Mustache.to_html($('#color-thief-output-template').html(), colorThiefOutput);
    $('.color-thief-output').html(colorThiefOuputHTML);
  });
  // Render example images
  // var examplesHTML = Mustache.to_html($('#image-section-template').html(), target);
  // $('#example-images').append(examplesHTML);



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
