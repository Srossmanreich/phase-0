// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement = $('body')
imgElement = $('img')

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$('.header').css({'color': 'red'})
$('.header').css({'border': 'solid 2px blue'})
$('.header').css({'font-size': '2em'})
$('.mascot h1').html("Fiddler Crabs!")

//RELEASE 4: Event Listener
  // Add the code for the event listener here

   $('img').on({
   	'mouseover' : function(){
   		this.src = 'fiddler.jpg';
   		$(this).animate({width: '170px', height: '120px', top: '-=15px', left: '-=15px'}, 500);
   		},
   	'mouseout' : function(){
   		this.src = 'devbootcamp-logo-new.png';
   		$(this).animate({width: '400px', height: '60px', top: '-=15px', left: '-=15px'}, 500);
   	}
   });

//RELEASE 5: Experiment on your own




})// end of the document.ready function: do not remove or write DOM manipulation below this.

// Reflection:

// What is jQuery?
// 	jQuery is a library of commands that makes DOM manipulation way easier
// What does jQuery do for you?
// 	jQuery lets me easily make my static html / css interactive using JS.
// What did you learn about the DOM while working on this challenge?
// 	This is my first time using a library. I actually thought it would below
// 	a lot easier. Jquery is like its own language a little.



