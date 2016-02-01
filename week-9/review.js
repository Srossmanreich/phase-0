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

var grocery = {};

var addItem = function(list_name,item_name,quantity){
	list_name[item_name] = quantity;
	console.log(list_name);
};

var deleteItem = function(list_name,item_name){
	delete list_name[item_name];
	console.log(list_name);
}

var updateItem = function(list_name,item_name,new_quantity){
	list_name[item_name]=new_quantity;
	console.log(list_name);
};

var printList = function(list_name){
	for (var i in Object.keys(list_name)){
		console.log(Object.keys(list_name)[i],": ",list_name[Object.keys(list_name)[i]]," items.")
	};
};

addItem(grocery,"Apple",3);
addItem(grocery,"Celery",4);
deleteItem(grocery,"Apple");
addItem(grocery,"Chocolate",3);
updateItem(grocery,"Celery",300);
printList(grocery);

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
