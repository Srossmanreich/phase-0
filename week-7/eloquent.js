// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var cat = "meow";
console.log(cat);

//var answer = prompt("What is your favorite food?");
//alert("Hey! That's my favorite too!");

var string = "#";
while(string.length < 8){
	console.log(string);
	string += "#";
}

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

//Looping a Triangle:

var string = "#";
while(string.length < 8){
	console.log(string);
	string += "#";
}

//FizzBuzz:

for(var number = 1; number < 101; number += 1)
	if(number % 3 === 0 && number % 5 !== 0){
		console.log("Fizz");
	} else if(number % 3 !== 0 && number % 5 === 0){
		console.log("Buzz");
	} else if(number % 3 === 0 && number % 5 === 0){
		console.log("FizzBuzz");
	} else {
		console.log(number);
	}

//Chess Board

var size = 8;

var counter = 1;
for(var string = ""; string.length <= size; counter ++)
  if(counter % 2 !== 0){
    string += " ";
  } else {
    string += "#";
  }
string += "\n";

var counter2 = 1;
for(var string2 = ""; string2.length <= size; counter2 ++)
  if(counter2 % 2 !== 0){
    string2 += "#";
  } else {
    string2 += " ";
  }

var final = string + string2

for (var i = 1; i <= (size/2); i++){
  console.log(final);
}


// Functions

// Complete the `minimum` exercise.

var minimum = function(num1,num2) {
	num1 > num2 ? console.log(num2) : console.log(num1);
}

minimum(2,5);


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Sydney",
	age: 26,
	favorite_foods: ["chicken fingers","cake","good salads"],
	quirk: "I don't eat dinner",
}

console.log(me)

/*
Questions for text box

Introduction:

1) Did you learn anything new about JavaScript or programming in 
general?

I learned more about the history of computing / computer science
as well as specifically javascript.

2) Are there any concepts you feel uncomfortable with?

Not specific concepts no, but what always worries me is how fast
computing and languages change. Javascript, JS tools, libraries,
etc. are so expansive and there is so much to learn sometimes I
just feel overwhelmed.

Ch.1: Values, Types, and Operators

1) Identify two similarities and two differences between 
JavaScript and Ruby syntax with regard to numbers, arithmetic, 
strings, booleans, and various operators.

Well it appears for the most part strings, numbers, and booleans
act the same in JS as they do in ruby. I did notice some key
differences: for example javascript tries to convert numbers
written as strings to actual numbers at times when it is
confused (e.g., console.log("5" - 1) will actually print 4 to
the console). JS also has two undefined data types not in ruby:
null and undefined that can be used in operations.

Ch. 2: Program Structure

1) What is an expression?

An expression is something you type into your JS console.

2) What is the purpose of semicolons in JavaScript? Are they 
always required?

Semicolons tell the computer that you've finished your command and
that the code should be run (it is like outlining steps for the
computer). Semicolons are always required after a completed
command in JS.

3) What causes a variable to return undefined?

If the variable cannot exist (e.g., 0 / 0) or if there is an
error.

4) Write your own variable and do something to it in the 
eloquent.js file.

var cat = "meow";
console.log(cat);

5) What does console.log do and when would you use it? What 
Ruby method(s) is this similar to?

Console.log prints whatever you tell it to to the console. It
is similar to puts, print, and p in ruby.

6) Write a short program that asks for a user to input their 
favorite food. After they hit return, have the program respond 
with "Hey! That's my favorite too!" (You will probably need 
to run this in the Chrome console (Links to an external site.) 
rather than node since node does not support prompt or alert). 
Paste your program into the eloquent.js file.

var answer = prompt("What is your favorite food?");
alert("Hey! That's my favorite too!");

7) Describe while and for loops

While and for loops are loops that run until a certain condition
you specify yourself is met.

8) What other similarities or differences between Ruby and 
JavaScript did you notice in this section?

A lot of the logic is the same. The biggest differences that
jump out are the syntax. It is similar enough to ruby to feel
almost the same, but different enough to cause quite a few
mistakes while switching between the two languages.

9) Complete at least one of the exercises (Looping a Triangle, 
FizzBuzz, of Chess Board) in the eloquent.js file.

Looping a Triangle:

var string = "#";
while(string.length < 8){
	console.log(string);
	string += "#";
}

FizzBuzz:

for(var number = 1; number < 101; number += 1)
	if(number % 3 === 0 && number % 5 !== 0){
		console.log("Fizz");
	} else if(number % 3 !== 0 && number % 5 === 0){
		console.log("Buzz");
	} else if(number % 3 === 0 && number % 5 === 0){
		console.log("FizzBuzz");
	} else {
		console.log(number);
	}


Chess Board:

var size = 8;

var counter = 1;
for(var string = ""; string.length <= size; counter ++)
  if(counter % 2 !== 0){
    string += " ";
  } else {
    string += "#";
  }
string += "\n";

var counter2 = 1;
for(var string2 = ""; string2.length <= size; counter2 ++)
  if(counter2 % 2 !== 0){
    string2 += "#";
  } else {
    string2 += " ";
  }

var final = string + string2

for (var i = 1; i <= (size/2); i++){
  console.log(final);
}

Alternative Solution 1:

var size = 8;
var output = "";
var lines = 0;

for (var i = 1; i < size * size; i++) {

  output += lines % 2 == 0 ?
    (i % 2 == 0 ? "#" : " ") :
    (i % 2 == 0 ? " " : "#");

  if (i % size == 0) {
    lines += 1;
    output += "\n";
  }
}

Alternative Solution 2:

var size = 8;
var output = "";

for (var i = 0; i < size * size; i++) {
  if (i > 0 && i % size == 0) output += "\n";

  output += Math.floor(i / size) % 2 == 0 ?
    (i % 2 == 0 ? " " : "#") :
    (i % 2 == 0 ? "#" : " ");
}

console.log(output);

console.log(output);
 //# # # # # # # # # #

Ch 3. Functions

1) What are the differences between local and global variables 
in JavaScript?

A local variable is a variable defined inside of an object or
function. A global variable is defined outside and thus can be
used anywhere in the program.

2) When should you use functions?

Functions should be used when you need to accomplish certain
tasks over and over again. Functions can make your program DRY

3) What is a function declaration?

When you call a function.

4) Complete the minimum exercise in the eloquent.js file.

var minimum = function(num1,num2) {
	num1 > num2 ? console.log(num2) : console.log(num1);
}

minimum(2,5);

Ch. 4: Data Structures: Objects and Arrays

1) What is the difference between using a dot and a bracket 
to look up a property? Ex. array.max vs array["max"]

A dot calls a method on the object while a bracket calls for
the value at that numeric or string position within the array /
object.

2) Create an object called me that stores your name, age, 
three favorite foods, and a quirk in your eloquent.js file.

var me = {
	name: "Sydney",
	age: 26,
	favorite_foods: ["chicken fingers","cake","good salads"],
	quirk: "I don't eat dinner",
}

console.log(me)

3) What is a JavaScript object with a name and value property 
similar to in Ruby?

A hash!

REFLECT

1) What are the biggest similarities and differences between 
JavaScript and Ruby?

Two big differences jump out to me: 1) the syntax and 2) how much
more disorganized / free-wheeling JS is. You use var to create
everything it seems and there are less distinctions between
object types. Also JS doesn't appear to have as many methods as
Ruby. Otherwise though much of the logic is the same.

2) Was some of your Ruby knowledge solidified by learning 
another language? If so, which concepts?

I don't think so. I do feel like I am learning JS faster than I
would have if I hadn't first jumped into Ruby.

How do you feel about diving into JavaScript after reading 
these chapters?

Excited to dive in (although I miss Ruby already!)

*/





