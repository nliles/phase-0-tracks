// Function reverse(str)
// Will do this by obtaining the index of the last item of a string and creating a new string by adding each index to that string in reverse.
// Step 1:
// Determine the index of the last item of the string:
// Use string.length to determine the length of the string.
// The index of the first item of the string begins with 0; the last index of a string will always be string-1.
// Count down from the last index of the string and stop when index is equal to 0. 
// Use (i--) as the counter. 
// Set the loop to continue while the index is greater than or equal to zero. 
// This will now reverse the string and print out each idividual item of the string in reverse.
// Join the individual items of the string:
// Create a new variable called new_string
// Add each string item to new_string. 
// Letters will be added in reverse and display the original string reversed.
// Print the new string only if some condition is true.
// Use if/else statement to print the string if the length is greater than 5.
// If the length is greater than 5, print new_string.
// If the length is not greater than 5, print "too short!"




function reverse(str) {
	var new_string = '';
    for (var i = str.length -1; i >=0; i--)
    new_string += str[i];
    if (new_string.length > 5) {
    console.log(new_string); 
    } else {
	console.log("Too short!")
}
}

reverse("reverse me");
reverse("hi")