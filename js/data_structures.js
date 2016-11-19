var colorArray = ["blue", "red", "green", "yellow"];
var nameArray = ["Jake", "Davis", "Chris", "Tim"];

colorArray.push("orange")
nameArray.push("Max")

for (var i = 0; i < colorArray.length; i++){
	console.log(newArray = [nameArray[i], colorArray[i]])
}

function Car (make, color, four_wheel){
	console.log("New car off the line:", this);
	this.make = make;
	this.color = color;
	this.four_wheel = four_wheel;

	this.rev = function(){
		console.log("Vroom, vroom");
	};
}

var new_car = new Car("honda", "green", false);
console.log(new_car);
console.log("Listen to that baby purr!");
new_car.rev();

var new_car = new Car("lambo", "gold", true);
console.log(new_car);
console.log("this car is fast as hell");
new_car.rev();

var new_car = new Car("audi", "black", true);
console.log(new_car);
console.log("I wanna go fast");
new_car.rev();



