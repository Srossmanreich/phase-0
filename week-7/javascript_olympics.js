 // JavaScript Olympics

// I paired [with: ] on this challenge.

// This challenge took me [#] hours.


// Warm Up


// Bulk Up

var array = [
  {name: "Ian", event: "Shotput"},
  {name: "Sydney", event: "Javelin"}
]
var win = function(array) {
  for (var i in array){
    console.log(array[i].win = array[i].name + " has won " + array[i].event);
  };
}

win(array);

// Jumble your words

var reverse = function(string){
  var reverseString = string.split('').reverse();
  console.log(reverseString);
  reverseString = reverseString.join('');
  console.log(reverseString);
}

reverse("Javelin");


// 2,4,6,8

var array = [1,2,3,4,5,6,7];

var evensfunction = function(array1){
  var evens = [];
  for(var i in array1){
    if(array1[i]%2===0){
      evens.push(array1[i]);
    };
  };
  console.log(evens);
};

evensfunction(array);

var evens2=[];

evens2 = array.filter(function(x){return x % 2 === 0});
console.log(evens2);


// "We built this city"

var Athlete = function(name,age,sport,quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!");
console.log(michaelPhelps.constructor === Athlete);
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote);


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