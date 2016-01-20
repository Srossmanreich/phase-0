// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Sydney & Kathryn.

// Pseudocode
/*

1. create a function called separate comma that takes a number
2. convert the number to a string
3. separate the string into digits in an array
4. reverse the array 
5. create an empty array to push to (maybe)
6. create a loop that iterates by three, add a comma after the third item
7. reverse it back
8. join the elements back into a string
*/

// Initial Solution

var separateComma = function(num){
  var check = []
  var answer = num.toString().split("").reverse();
  for (var index = 0; index < answer.length; index ++){
      check.push(answer[index]);
    if( ((index+1)%3==0) && (index < (answer.length-1))){
      check.push(",");
    };
  };
  return check.reverse().join("");
};

console.log(separateComma(128907093));

// Refactored Solution

var separateComma2 = function(num){
  return num.toLocaleString();
};

console.log(separateComma2(128907093));

console.log(typeof separateComma(234321));


// Your Own Tests (OPTIONAL)

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (separateComma instanceof Object),
  "separateComma is not a function",
  "1. "
)

assert(
  (separateComma(82730408273) === "82,730,408,273"),
  "separateComma does not add commas to a number",
  "2. "
)

assert(
  (separateComma(82730408273) instanceof String),
  "separateComma does not produce a string",
  "3. "
)


// Reflection

/*
1) What was it like to approach the problem from the 
perspective of JavaScript? Did you approach the problem 
differently?

Tough. I felt like I had all of this ruby knowledge that was
useful in theory, but made it difficult to actually code this
assignment.

2) What did you learn about iterating over arrays in JavaScript?

That there is no "each" to use (or similar functions). We had
to create our own loops and counters.

3) What was different about solving this problem in JavaScript?

We had to create our own loop to iterate over the array, rather
than string together methods (such as map) that will do a lot
for you in ruby.

4) What built-in methods did you find to incorporate in your 
refactored solution?

The toLocaleString method which pretty much did the challenge
entirely for us ....

*/