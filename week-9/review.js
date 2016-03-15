
//9.2.1 -- Grocery List redux!

//Ruby code below:

// # Die Class 2: Arbitrary Symbols


// # I worked on this challenge [by myself].
// # I spent [#] hours on this challenge.

// # Pseudocode

// # Input: the sides of your die listed as strings or integers in an array
// # Output: a new Die class with my chosen sides that has methods to show number of sides and randomly select a side ascribed to my die
// # Steps: 
// =begin
// 1) create a new die class that accepts an array of sides
// 2) define a method 'sides' within the class
// 	have this method count the number of sides the die has and return this number when called
// 3) define a roll method
// 	have this method first find a random number between 0 and one minus the size of the array with the sides listed
// 	then return the item in the array at this number
// =end

// # Refactored Solution

// class Die
//   attr_accessor :array
//   def initialize(array)
//   	@array = array
//   	raise ArgumentError.new("Please input an array of your dice's sides.") unless array.any? 
//   end
//   def sides
//   	array.length
//   end
//   def roll
//   	array[rand(0..(sides-1))]
//   end
// end

function Die() {
  return {
    printSides: [],
    addSide: function(x) {
      this.printSides.push(x);
    },
	mylength: function() {
		return this.printSides.length;
	},
	roll: function(){
		return this.printSides[Math.floor(Math.random() * this.printSides.length)]
	}
  }
};

var x = new Die();
x.addSide("asdf");
x.addSide("monkey");
console.log(x.printSides);
console.log(x.mylength());
console.log(x.roll());

// What concepts did you solidify in working on this challenge? 

// I reviewed javascript and solidified the JS version of creating classes and functions.

// What was the most difficult part of this challenge?

// Remembering JS!

// Did you solve the problem in a new way this time?

// Yes! Ruby is so much better than JS though.

// Was your pseudocode different from the Ruby version? What was the same and what was different?

// No actually. I used the same pseudo code


// class Die {
//   constructor() {
//     this.printSides = [];
//   }

//   addSide(x) {
//     this.printSides.push(x);
//   }
// }

// var x = new Die();
// x.addSide("asdf")












//9.2.1 -- Grocery List

//PSEUDOCODE

// 1) Create an empty grocery list
// 2) Create an add item function that adds an item and a
// quantity to your list
// 3) Create a delete item function that deletes an item from
// your list
// 4) Create an update item function that changes the quantity
// for an existing item
// 5) Create a print list function that prints out your
// list in a visually appealing way

// var grocery = {};

// var addItem = function(list_name,item_name,quantity){
// 	list_name[item_name] = quantity;
// 	console.log(list_name);
// };

// var deleteItem = function(list_name,item_name){
// 	delete list_name[item_name];
// 	console.log(list_name);
// }

// var updateItem = function(list_name,item_name,new_quantity){
// 	list_name[item_name]=new_quantity;
// 	console.log(list_name);
// };

// var printList = function(list_name){
// 	for (var i in Object.keys(list_name)){
// 		console.log(Object.keys(list_name)[i],": ",list_name[Object.keys(list_name)[i]]," items.")
// 	};
// };

// addItem(grocery,"Apple",3);
// addItem(grocery,"Celery",4);
// deleteItem(grocery,"Apple");
// addItem(grocery,"Chocolate",3);
// updateItem(grocery,"Celery",300);
// printList(grocery);

//Refactor

//I actually think the way I wrote this code if pretty good
//and easy to understand

// 1) What concepts did you solidify in working on this 
// challenge? (reviewing the passing of information, objects, 
// constructors, etc.)

// I am getting a lot more comfortable with functions in JS.
// I do think I could get more practice with constructors.

// 2) What was the most difficult part of this challenge?

// I always think the first challenge of the week is tough
// because I always have this moment of panic: "Did I forget
// everything? OMG how do I do this?" but everything always
// comes back so quickly and I shock myself with how quickly
// I can get through the material :)

// 3) Did an array or object make more sense to use and why?

// I think an object made more sense given that each item
// had a quantity attached to it.
