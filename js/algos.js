// longestPhrase function will return the longest phrase in any given array
function longestPhrase(array){

	var phrase = array[0];
	for ( i=0 ; i < array.length ; i++) {
		if ((array[i].length) > (phrase.length)) {
			phrase = array[i];}
		}
		return phrase
	}
function isSimilar(hash1,hash2) {
	var similar = false;
	for (var key1 in hash1) {
			for (var key2 in hash2) {
				if ((key1 === key2) && (hash1[key1] === hash2[key2])) {
					similar = true;}
			}
	}
	return similar;
}

//// Driver code \\\\
// longest phrase 

var array = ["long phrase","longest phrase","longer phrase"];
	
console.log(longestPhrase(array));

var colors = ['blue', 'red', 'raspberry', 'yellow'];

console.log(longestPhrase(colors));

var horse_names = ['Ed', 'raspberry', 'runner', 'sea biscuit'];

console.log(longestPhrase(horse_names));


// similar objects

var Object1 = {name: "Steven", age: 54};
var Object2 = {name: "Tamir", age: 54};
var Object3 = {animal: "Dog", legs: 4};
var Object4 = {animal: "Dog", legs: 3};


console.log('Is', Object1 , 'similar to' , Object2 , '?');
console.log(isSimilar(Object1,Object2));

console.log('Is' , Object3 , 'similar to' , Object2 , '?');
console.log(isSimilar(Object3,Object2));

console.log('Is' , Object2 , 'similar to ' , Object4 , '?');
console.log(isSimilar(Object2,Object4));

console.log('Is' , Object3 , 'similar to' , Object4 , '?');
console.log(isSimilar(Object3,Object4));

