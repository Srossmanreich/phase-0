/*
Release 1: Tests to User Stories (Sydney)

INSTRUCTIONS:
Based on the tests, write user stories that describe what the 
code needs to do. User stories take the following format:

As a user, I want to...

The user stories should be easily translated into 
pseudocode by the next person in your group. However, a user 
story is NOT pseudocode -- it should describe the experience 
of someone using the function. Words like array or loop or any 
word not known to a non-technical person should not be used. You 
can specify the function name.

ANSWER:

As a user, I want to be able to use a command called "sum" to
add up all the values within a set, whether the set has an even
number of values in it or an odd number of values in it.

As a user, I want to be able to use a command called "mean" to
find the average of all the values within a set, whether the 
set has an even number of values in it or an odd number of values 
in it.

As a user, I want to be able to use a command called "median" to
find the median of all the values within a set, whether the set 
has an even number of values in it or an odd number of values in it.

*/

/*
Release 2: User Stories to Psuedocode (Sanderfer)
INSTRUCTIONS:
Based only on the user stories you received from the first person, pseudocode the logic you would need to implement each story. Your pseudocode should be small steps that can be easily translated into code.

ANSWER:
User Story 1:
-Need to define "sum"
-There needs to be a list of numbers
-"Sum" needs to add all values in the list.

User Story 2:
-Need to define "mean"
-There needs to be a list of numbers
-"Mean" needs to take in the list of numbers and output the average.
-Take sum of all numbers
-Determin the length of the list (How many numbers are there in the list?)
-Divide the total sum by the amount of numbers there are in the list to find the mean.

User Story 3:
-Need to define "median"
-There needs to be a list of numbers.
-Sort list from smallest to greatest.
-Determine the length of the list (how many numbers are there in the list?)
-Divide the length of the list by 2 to determine the half way point.
-The number at the halfway point is the median.
*/

//Release 3: Pseudocode to code (Mollie)

//SUM
var list = [2,5,8,5,4,3,3];
function addList(array){
  var sum = 0;
  for(var i = 0; i < array.length; i++) {
    sum += array[i]
  }
  return sum;
}

console.log(addList(list));

//AVERAGE
var list = [2,5,8,5,4,3,3];
function avgList(array){
  var sum = 0;
  for(var i = 0; i < array.length; i++) {
    sum += array[i]
  }
  var avg = sum/(array.length) ;
  return Math.round(avg);
}

console.log(avgList(list));

//MEDIAN

var list = [2,5,8,5,4,4,3,2];
function medianList(array){
  var median = [];
  for(var i = 0; i < array.length; i++) {
    median = array.sort(i);
  }
  var length = (median.length/2);
  var odd = Math.round(median.length/2);
    if (median.length % 2 != 0)
      return (median[odd]);
    else (median.length % 2 == 0)
      return (median[length] + median[length-1])/2
}

console.log(medianList(list));

//Release 4 (John Seo)

// 1.   As a user, I want a function called 'sumOfSet' that takes a set of numbers and adds them up, returning the total.
// 2.  As a user, I want a function called 'mean' that takes a set of numbers and calculates their average.
// 3.  As a user, I want a function called 'median' that takes a set of numbers and returns its median. 


//SUM
var list = [2,5,8,5,4,3,3];
function sumOfSet(array){
  var sum = 0;
  for(var i = 0; i < array.length; i++) {
    sum += array[i]
  }
  return sum;
}

console.log(sumOfSet(list));

//AVERAGE

function mean(array){
  var sum = 0;
  for(var i = 0; i < array.length; i++) {
    sum += array[i]
  }
  var avg = sum/(array.length) ;
  return Math.round(avg);
}
var list = [2,5,8,5,4,3,3];
console.log(mean(list));

// MEDIAN

function median(array){
  var median = array.sort();
  var length = (median.length/2);
  var odd = Math.round(median.length/2);
    if (median.length % 2 != 0)
      return (median[odd]);
    else (median.length % 2 == 0)
      return (median[length] + median[length-1])/2
}
var list = [2,1,3,4,6,5,7,8];
console.log(median(list));

//Release 5 (Andrew Kim)

// 1.   As a user, I want to create a function that adds up the elements of an array and returns a sum.
// 2.  As a user, I want a function that takes a list of numbers and returns their average.
// 3.  As a user, I want a function that takes the middle number of a set of numbers.


//SUM-refactored
var list = [2,5,8,5,4,3,3];
function sumOfSet(array){
  var sum = 0;
  for(var i = 0; i < array.length; i++) {
    sum += array[i]
  }
  return sum;
}
console.log(sumOfSet(list));

// not much I could find to change.

//AVERAGE-refactored

function mean(array){
var mean = sumOfSet(array)/array.length;
return Math.round(mean)}

console.log(mean(list));

// MEDIAN-refactored

function median(array){
  var median = array.sort();
  var length = (median.length/2);
  var odd = Math.round(median.length/2);
    if (median.length % 2 != 0)
      return (median[odd]);
    else
      return (median[length] + median[length-1])/2
}

console.log(median(list));

// Again pretty DRY, but the else statement was unnecessary

/*SUMMARY

Our 'sum' test failed because the addition function wasn't
specifically named 'sum'. It also doesn't appear to be passing
functionally, but I am unclear why as when I run the sum code it
seems to be working for me.


*/
