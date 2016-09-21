// Obtain the length of the array and iterate over the items of the array.
// Obtain the length of each index of the array.
// Compare the length of each item of an array by accessing the index of each array.
// Print the item with the longest length.

function Longest_string(array) {
    var string = 0;
    for (var i = 0; i < array.length; i++) {
        if (array[i].length > string ) {
        string = array[i].length;
        longestString = array[i];
        }
    }
    console.log (longestString);
}

Longest_string(["long phrase", "longest phrase", "longer phrase"])


// Find a way to compare the values of a key-value pair. 
// Implement a formula  that will take two hashes and return a new hash with the same value if they keys are the same.
// Compare the two values of the hash.
// If the value is the same, put this in a new hash.
// If the value is different, do not put this in a new hash.
// Return the new hash. Should return nil if the hash is empty. Should return the matching value if it is the same.


function compare_values(hash_1, hash_2) {
  return Object.keys(hash_1).reduce(function(same_value, key) {
    if (hash_1[key] == hash_2[key]) same_value[key] = hash_2[key];
    return same_value;
  }, {});
}

console.log(compare_values({'name':'Steven', 'age':'54'},{'name':'Tamir', 'age':'54'}));


// Create a function that will take a number as a parameter and generate a number of strings equal to this number.
// Store strings in an array. 
// Create a loop that will run a number of times(number provided as a parameter)
// Set the minimum length and maximum length of the randomly generated string.
// Randomly fill the string with characters 
// Print result




function Randomstring(number) {
    var random_array = []
    var times = number;
    for(var i=0; i < times; i++){
    random_array.push(Math.random().toString(36).replace(/[^a-z]+/g, '').substr(1, 10));
}
// console.log(random_array);
return random_array
}


Randomstring(3);

var test=Randomstring(3);  
Longest_string(test);





