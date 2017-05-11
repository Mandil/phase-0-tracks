// Pseudocode:

// create empty string "new_string" that will take the new created string
// loop from (string.length - 1)  to 0, —-i
// new_string += string[i]


// Program: 


function reverse(string) {
	var new_string = "";
	if (string.length < 12) {
		for (var i = string.length - 1; i >= 0; i--) {
			new_string += string[i];
		}
		return new_string;
	}
}
new_word = reverse('hello world');

console.log(new_word);
console.log(reverse('welcome back mark'));