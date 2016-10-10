var colors = ["Blue-green", "Amythesyst", "Ruby", "Azul"]
var name = ["Ed Sheeran", "Micheal Buble", "Enrique Inglesias", "Ariana Grande"]
colors.push("Purple")
name.push("Batman")

horsey = {}

for (i = 0; i < name.length; i++) { 
	horsey[name[i]] = colors[i]
}

console.log(horsey)

console.log("-----------")

function Car(name, horse_power, color){

	this.name = name
	this.horse_power = horse_power;
	this.color = color;

	this.turn_off = function() {console.log("Turning " + name + " off")}

}
var new_car = new Car("BMW", 450, "silver");
console.log("Our new car is a: " + (new_car.name));
console.log("It has " + new_car.horse_power + " hp");
console.log("We chose " + new_car.color + " b/c why not :D")
new_car.turn_off();




