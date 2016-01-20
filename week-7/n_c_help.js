// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode



// Initial Solution


var separateComma = function(num){
	var answer = num.toString().split("").reverse();
	var output = "";

	for (var counter = 0; counter < answer.length; counter++) {
		output += answer[counter];
		if ((counter+1) % 3 == 0 && counter < (answer.length - 1)){
			output += ",";
		}
	}

	output = output.split("").reverse().join("");
	
	console.log(output);
}


var separateComma = function(num){
 var num = num.toString();
 var output = "";
 
 for (var counter = num.length - 1; counter > -1; counter--) {
   if ((counter + 1) % 3 == 0 && counter < num.length - 1)
     output = "," + output;
   output = num[counter] + output;
 }
 
 console.log(output);
}

separateComma(123456789);

separateComma(123456789);
separateComma(123456789045);
separateComma(123);
separateComma(1234);




// Refactored Solution




// Your Own Tests (OPTIONAL)




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

