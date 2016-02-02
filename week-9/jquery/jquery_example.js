// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function() {

var bodyElement = $('body');
var h1Element = $('.intro');
bodyElement.css({'background-color': 'pink'});

h1Element.css({'color': 'green'});
h1Element.css({'border': 'dashed 1px purple'});
h1Element.css({'visibility': 'visible'});

$(".mascot h1").html("Fiddler Crabs");

$('img').on('mouseover', function(e){
  e.preventDefault()
  $(this).attr('src', 'https://upload.wikimedia.org/wikipedia/commons/0/0b/Fiddler_crab.jpg');
  $(this).css({'border': '10px solid red'}).animate({'borderWidth': '50px'}, 500);
  $(this).animate({'width': '500px'}, 500);
  $(this).animate({'opacity': 0.2}, 5000);
});

$('img').on('mouseout', function(e){
  e.preventDefault()
  $(this).attr('src', "./dbc_logo.png");
  $(this).css({'border': '10px solid red'}).animate({'borderWidth': '1px'}, 500);
  $(this).animate({'width': '350px'}, 500);
  $(this).animate({'opacity': 1}, 5000);
});
});

// Reflection:

// What is jQuery?
// 	jQuery is a library of commands that makes DOM manipulation way easier
// What does jQuery do for you?
// 	jQuery lets me easily make my static html / css interactive using JS.
// What did you learn about the DOM while working on this challenge?
// 	This is my first time using a library. I actually thought it would below
// 	a lot easier. Jquery is like its own language a little.