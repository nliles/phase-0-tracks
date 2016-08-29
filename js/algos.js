
// 

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


function compare_values(hash_1, hash_2) {
  return Object.keys(hash_1).reduce(function(same_value, key) {
    if (hash_1[key] == hash_2[key]) same_value[key] = hash_2[key];
    return same_value;
  }, {});
}

compare_values({'name':'Steven', 'age':'54'},{'name':'Tamir', 'age':'54'});



