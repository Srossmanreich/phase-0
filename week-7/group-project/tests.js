
// Add the finished solution here when you receive it.


//Release 4 (John Seo)

// 1.   As a user, I want a function called 'sumOfSet' that takes a set of numbers and adds them up, returning the total.
// 2.  As a user, I want a function called 'mean' that takes a set of numbers and calculates their average.
// 3.  As a user, I want a function called 'median' that takes a set of numbers and returns its median. 


//SUM
var list = [2,5,8,5,4,3,3];
function sum(array){
  var sumofset = 0;
  for(var i = 0; i < array.length; i++) {
    sumofset += array[i]
  }
  return sum;
}

console.log(sum(list));

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








// __________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)