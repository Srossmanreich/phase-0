 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Write an alien invastion game
// Overall mission: Destroy the aliens
// Goals: Create a random roll game that gives users the chance to beat the aliens (or maybe make peace with them?)
// Characters: Delenn Janeway
// Objects: weapons, heals
// Functions: attack, heal, defend

// Pseudocode
/*
Create alien ship object and earth ship object
Give each a set of health, weapons, heals, and defenses with values for
each with defining attributes.
Setup function by which one ship can attack another, heal itself, and
defend itself.
Create prompts for the user to play the game.
*/

// Initial Code

//Ship code for aliens and earthlings

var alien = {
  name: "Alien",
  health: 100,
  weapons: {
    cannon: 10,
    gun: 5,
    bomb: 40,
  },
  heals: {
    shield_regen: 10,
  },
  defend: {
    shields: false,
  },
};

var earth = {
  name: "Earth",
  health: 100,
  weapons: {
    cannon: 10,
    gun: 5,
    bomb: 40,
  },
  heals: {
    shield_regen: 10,
  },
  defend: {
    shields: false,
  },
};

//Attack code
var attack = function(target,attacker){
  var check = Math.random();
  if(target.defend.shields == true){
    target.defend.shields = false;
    console.log(attack.name + "'s attack missed! " + target.name + " had their shields up. " + target.name + "'s health is now " + target.health + ".")
  } else if(check < 0.1){
    target.health -= attacker.weapons.bomb;
    console.log(attacker.name + " used their bomb on " + target.name + " for " + attacker.weapons.bomb + " damage; " + target.name + "'s health is now " + target.health + "." );
  } else if (check > 0.8){
    target.health -= attacker.weapons.cannon;
    console.log(attacker.name + " used their cannon on " + target.name + " for " + attacker.weapons.cannon + " damage; " + target.name + "'s health is now " + target.health + "." );
  } else {
    target.health -= attacker.weapons.gun;
    console.log(attacker.name + " used their gun on " + target.name + " for " + attacker.weapons.gun + " damage; " + target.name + "'s health is now " + target.health + ".");
  }
};

//Heal code
var heal = function(target){
  if(target.defend.shields == true){
    target.defend.shields = false;
  };
  if(target.health == 100){
    console.log(target.name + " is already at full health! " + target.name + "'s health is " + target.health + ".");
  } else {
    target.health += target.heals.shield_regen;
    if(target.health >= 100){
      target.health = 100;
    };
    console.log(target.name + " healed itself " + target.heals.shield_regen + " health. " + target.name + "'s health is " + target.health + ".");
  }
};

//Shield code
var shield = function(target){
  target.defend.shields = true;
  console.log(target.name + "'s shields are now on. " + target.name + "'s health is " + target.health + ".")
}


//Start the game
answer1 = prompt("Captain Delenn Janeway! We are in dire need of your expert assistance! The aliens have attacked and we need you to defeat them! Will you help (answer \'y\' or \'n\')?");

if (answer1 !== "y"){
  console.log("Oh no! Now the earth will be destroyed :(");
  } else {
    console.log("Great! Get ready to fight! --- REMEMBER: type 'exit' in at any point to leave the game");
  }

while(earth.health > 0 && alien.health > 0){
  
  answer2 = prompt("Will you 'attack', 'heal', or 'defend'?");
  
  if(answer2 == "attack"){
    attack(alien,earth);
  }else if(answer2 == "heal"){
    heal(earth);
  }else if(answer2 == "defend"){
    shield(earth);
  }else if(answer2 == "exit"){
    console.log("Goodbye --- hope you had fun!")
    break
  }else{
    console.log("You have to input 'attack', 'heal', or 'defend'")
  };
  
  if(alien.health <= 0){
    console.log("YES! You've defeated the aliens! Thank you Captain!");
    break
  }
  
  var alien_turn = Math.random();
  
  if(alien_turn <= 0.20){
    heal(alien);
  } else if (alien_turn >= 0.80){
    shield(alien);
  } else {
    attack(earth,alien);
  };
  
  if(earth.health <= 0){
    console.log("Oh no! You've died! You lose and the aliens takeover earth :(");
    break
  };
};


// Refactored Code

var alien = {
  name: "Alien",
  health: 100,
  weapons: {
    cannon: 10,
    gun: 5,
    bomb: 40,
  },
  heals: {
    shield_regen: 10,
  },
  defend: {
    shields: false,
  },
};

var earth = {
  name: "Earth",
  health: 100,
  weapons: {
    cannon: 10,
    gun: 5,
    bomb: 40,
  },
  heals: {
    shield_regen: 10,
  },
  defend: {
    shields: false,
  },
};

//Attack code
var attack = function(target,attacker){
  var weap = ""
  var check = Math.random();
  if(target.defend.shields == true){
    target.defend.shields = false;
    console.log(attack.name + "'s attack missed! " + target.name + " had their shields up. " + target.name + "'s health is now " + target.health + ".")
  } else {
    if(check < 0.1){
      weap = "bomb"
      target.health -= attacker.weapons.bomb;
    } else if (check > 0.8){
      weap = "cannon"
      target.health -= attacker.weapons.cannon;
    } else {
      weap = "gun"
      target.health -= attacker.weapons.gun;
    };
    console.log(attacker.name + " used their " + weap + " on " + target.name + "; " + target.name + "'s health is now " + target.health + "." );
  };
};

//Heal code
var heal = function(target){
  if(target.defend.shields == true){
    target.defend.shields = false;
  };
  if(target.health == 100){
    console.log(target.name + " is already at full health! " + target.name + "'s health is " + target.health + ".");
  } else {
    target.health += target.heals.shield_regen;
    if(target.health >= 100){
      target.health = 100;
    };
    console.log(target.name + " healed itself " + target.heals.shield_regen + " health. " + target.name + "'s health is " + target.health + ".");
  }
};

//Shield code
var shield = function(target){
  target.defend.shields = true;
  console.log(target.name + "'s shields are now on. " + target.name + "'s health is " + target.health + ".")
}


//Start the game
answer1 = prompt("Captain Delenn Janeway! We are in dire need of your expert assistance! The aliens have attacked and we need you to defeat them! Will you help (answer \'y\' or \'n\')?");

if (answer1 !== "y"){
  console.log("Oh no! Now the earth will be destroyed :(");
  } else {
    console.log("Great! Get ready to fight! --- REMEMBER: type 'exit' in at any point to leave the game");
  }

while(earth.health > 0 && alien.health > 0){
  
  answer2 = prompt("Will you 'attack', 'heal', or 'defend'?");
  
  if(answer2 == "attack"){
    attack(alien,earth);
  }else if(answer2 == "heal"){
    heal(earth);
  }else if(answer2 == "defend"){
    shield(earth);
  }else if(answer2 == "exit"){
    console.log("Goodbye --- hope you had fun!")
    break
  }else{
    console.log("You have to input 'attack', 'heal', or 'defend'")
  };
  
  if(alien.health <= 0){
    console.log("YES! You've defeated the aliens! Thank you Captain!");
    break
  }
  
  var alien_turn = Math.random();
  
  if(alien_turn <= 0.20){
    heal(alien);
  } else if (alien_turn >= 0.80){
    shield(alien);
  } else {
    attack(earth,alien);
  };
  
  if(earth.health <= 0){
    console.log("Oh no! You've died! You lose and the aliens takeover earth :(");
    break
  };
};

/* Reflection

1) What was the most difficult part of this challenge?

Once there was a ton of code (~100 lines) in my game, it was difficult
to catch mistakes / fix bugs. I also really underestimated how
complicated a simple game can be.

2) What did you learn about creating objects and functions that 
interact with one another?

It isn't as hard as I expected!

3) Did you learn about any new built-in methods you could use in 
your refactored solution? If so, what were they and how do they work?

I really couldn't find any built-in methods to help me. I am sure
they are out there. To be honest, I spent so much time just writing
the code, that by the time I got to refactoring, I was a bit burned
out.

4) How can you access and manipulate properties of objects?

You can call the properties like methods on the object.






*/