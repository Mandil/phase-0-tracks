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