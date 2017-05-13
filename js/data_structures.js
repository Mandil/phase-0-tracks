var colors = ['blue', 'red', 'raspberry', 'yellow'];
var horse_names = ['Ed', 'raspberry', 'runner', 'sea biscuit'];
colors.push('white');
console.log(colors);

colors.splice(1,1)
console.log(colors);
var barn_horses = {};
for (i=0; i < colors.length; i++) {
	barn_horses[horse_names[i]] = colors[i];
}
console.log(barn_horses);