// longestPhrase function will return the longest phrase in any given array
function longestPhrase(array){

	var phrase = array[0];
	for ( i=0 ; i < array.length ; i++) {
		if ((array[i].length) > (phrase.length)) {
			phrase = array[i];}
		}
		return phrase
	}

//// Driver code \\\\

var array = ["long phrase","longest phrase","longer phrase"];
	
console.log(longestPhrase(array));

var colors = ['blue', 'red', 'raspberry', 'yellow'];

console.log(longestPhrase(colors));

var horse_names = ['Ed', 'raspberry', 'runner', 'sea biscuit'];

console.log(longestPhrase(horse_names));
