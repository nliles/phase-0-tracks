
function Longest_string(array) {
    var string = 0;
    for (var i = 0; i < array.length; i++) {
        if (array[i].length > string ) {
        string = array[i].length;
        longestString = array[i];
        }
    }
    return longestString;
}

Longest_string(["long phrase", "longest phrase", "longer phrase"])


