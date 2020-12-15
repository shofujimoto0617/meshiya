$(document).on('turbolinks:load', function() {


  $(function() {
    $('.couresImg').slick({
        dots: true,
        autoplay: true,
        autoplaySpeed: 5000,
    });

    $(".swiper-wrapper").slick({
        autoplay: true,
        autoplaySpeed: 2500,
        speed: 800,
        dots: true,
        arrows: false,
        centerMode: true,
        centerPadding: '20%'
    });
  });
});



// $(window).load(function() {
//     $('.couresImg').slick({
//         dots: true,
//         autoplay: true,
//         autoplaySpeed: 5000,
//     });
// });

// $(function() {
//     $('.swiper-wrapper').slick({
//         dots: true,
//         autoplay: true,
//         autoplaySpeed: 5000,
//         disableOnInteraction: false
//     });
// });

// $(window).load(function() {
//   $(".swiper-wrapper").slick({
//     autoplay: true,
//     autoplaySpeed: 2500,
//     speed: 800,
//     dots: true,
//     arrows: false,
//     centerMode: true,
//     centerPadding: '20%'
//   });
// });

