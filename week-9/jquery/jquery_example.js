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

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$('.hello').css({'color': 'red'})
$('.hello').css({'border': 'solid 2px blue'})
$('.hello').css({'visibility': 'visibile'})
$('.mascot h1').html("Rock Doves")

//RELEASE 4: Event Listener
  // Add the code for the event listener here
 $('img').on({
   	'mouseover' : function(){
   		this.src = 'rockdove.jpg';
   		$(this).animate({width: '170px', height: '120px', top: '-=15px', left: '-=15px'}, 500);
   		},
   	'mouseout' : function(){
   		this.src = 'imgs/dbc_logo.png';
   		$(this).animate({width: '400px', height: '60px', top: '-=15px', left: '-=15px'}, 500);
   		}
  });


//RELEASE 5: Experiment on your own






})  // end of the document.ready function: do not remove or write DOM manipulation below this.