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


//

function Cars(make, color, mpg, automatic){
  this.make = make;
  this.color = color;
  this.mpg = mpg;
  this.automatic = automatic;
  this.drive = function () {console.log('*vroom*');}
}

var my_car = new Cars('Ford', 'Raspberry', 43, true);
my_car.drive();

console.log(my_car);

console.log(new Cars('Volkswagen', 'Navy Blue', 28, true));
console.log(new Cars('Chevy', 'Silver', 19, false));