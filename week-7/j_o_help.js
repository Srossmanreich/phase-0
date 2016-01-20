 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up




// Bulk Up

array = [
	{name:"Ryan",cat:"Swimming"},
	{name:"Sydney",cat:"Crossfit"},
];

var athletes = function(athletes_array){

	for (var counter in array) {
		athletes_array[counter].win = athletes_array[counter].name + " won " + athletes_array[counter].cat;
	}
}

athletes(array);

for(var i in array) {
	console.log(array[i].win);
}

// Jumble your words

var revers = function(string){
	return string.split("").reverse().join("");
}

console.log(revers("monkey"));

// 2,4,6,8

array = [1,2,3,4,5];
evens = array.filter(function(x) { return x % 2 == 0 });
console.log(evens);


// "We built this city"

var Athlete = function(name,age,sport,excuse){
	this.name = name
	this.sport = sport
	this.quote = excuse
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection

/*
1) What JavaScript knowledge did you solidify in this challenge?
I learned aobut constructors, the filter method, and I think I
am getting better at the counter / iteration (still more work to
do there though!)

2) What are constructor functions?
These are functions that take input and constructs and object with
them.

3) How are constructors different from Ruby classes (in your research)?
I think so. It is so hard to tell because ruby classes have all of
these very clear rules while objects in JavaScript are so much more
free-wheeling.

*/

