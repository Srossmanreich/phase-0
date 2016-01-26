// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
/* 1) Collect all the votes for each position
   2) Count the number of votes per candidate for each position
   3) Save the votes per candidate list
   4) Find the person who was voted for the MAX number of times
   for each position
   5) Reveal the winner per each position
*/


// __________________________________________
// Initial Solution

//Create separate arrays for each vote for each position 
//(will use for counting)
var p_tally = [];
var vp_tally = [];
var s_tally = [];
var t_tally = [];

//Goes through each individual student's votes
for(var i in Object.keys(votes)){
  //Gives you the specific votes (object of votes)
  //Then push votes into specified position array
  p_tally.push(votes[Object.keys(votes)[i]].president);
  vp_tally.push(votes[Object.keys(votes)[i]].vicePresident);
  s_tally.push(votes[Object.keys(votes)[i]].secretary);
  t_tally.push(votes[Object.keys(votes)[i]].treasurer);
};

//Create empty counter arrays for each position voted
var p_counts = [];
var vp_counts = [];
var s_counts = [];
var t_counts = [];

//Count the votes for each position
for(var i in p_tally){p_counts[p_tally[i]] = (p_counts[p_tally[i]] + 1) || 1;};
for(var i in vp_tally){vp_counts[vp_tally[i]] = (vp_counts[vp_tally[i]] + 1) || 1;};
for(var i in s_tally){s_counts[s_tally[i]] = (s_counts[s_tally[i]] + 1) || 1;};
for(var i in t_tally){t_counts[t_tally[i]] = (t_counts[t_tally[i]] + 1) || 1;};

//Put counted votes in VoteCount array
voteCount.president = p_counts;
voteCount.vicePresident = vp_counts;
voteCount.secretary = s_counts;
voteCount.treasurer = t_counts;

//Set each officer position to the key at max value (votes)
officers.president = Object.keys(p_counts).reduce(function(a, b){ return p_counts[a] > p_counts[b] ? a : b });
officers.vicePresident = Object.keys(vp_counts).reduce(function(a, b){ return vp_counts[a] > vp_counts[b] ? a : b });
officers.secretary = Object.keys(s_counts).reduce(function(a, b){ return s_counts[a] > s_counts[b] ? a : b });
officers.treasurer = Object.keys(t_counts).reduce(function(a, b){ return t_counts[a] > t_counts[b] ? a : b });


console.log(officers);

// __________________________________________
// Refactored Solution






// __________________________________________
// Reflection

/*
1) What did you learn about iterating over nested objects 
in JavaScript?

It is sooooo much more difficult than ruby (way less intuitive).
Sometimes you really have to deal with the keys of an object as an
array to even access the values in a loop.

2) Were you able to find useful methods to help you with this?

Reduce was the big winner on this front, as well as some counter
syntax and of course Object.keys

What concepts were solidified in the process of working through 
this challenge?

Object.keys is solidified as well as calling values based on keys
in an object. I still struggle a little with reduce due to its
functionality being so versatile, but the more I use it the better
I'm sure I'll get.
*/


// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)