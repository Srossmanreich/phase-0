// Instructions

// Define your favorite characters (as objects) from books, TV Shows/Movies, 
// video games, etc. Give them a number of properties, and add some objects 
// as properties as well. Add each object to an array. Then see if you can 
// access objects based on certain factors, like names that begin with the 
// same letter, from the same genre, etc.

var	gohan = {
		name: "gohan",
		show: "Dragon Ball Z",
		creator: {
			first: "Akira",
			last: "Toriyama"
		}
	};

var	goku = {
		name: "goku",
		show: "Dragon Ball Z",
		creator: {
			first: "Akira",
			last: "Toriyama"
		}
	};

var	pikachu = {
		name: "pikachu",
		show: "Pokemon",
		creator: {
			first: "Satoshi",
			last: "Tajiri"
		}
	};

var	batman = {
		name: "batman",
		show: "Justice League",
		creator: {
			first: "Paul",
			last: "Dini"
		}
	};

// Array of my objects

var favorites = [gohan,goku,pikachu,batman];

// Printing out favorite characters with first letter matching

	//Create a hash that counts the number of times a first letter appears
var hash = {};

for(var i in favorites){
	var x = favorites[i].name[0]
	if(hash.hasOwnProperty(x)){
    	hash[x] += 1
	} else {
		hash[x] = 1
	}
};
	//Remove any letters that only appear 1 time
for(var y in hash){
	if (hash[y] == 1){
		delete hash[y]
	}
};

	//Print object if the first letter of a name in favorites matches a key left in hash
for(var z in favorites){
	for(var a in hash){
		if(favorites[z].name[0] == a){
			console.log(favorites[z]);
		};
	};
};




