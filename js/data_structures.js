var colors = ["Orange", "Purple", "Green", "Aqua"]
var name = ["Justin Bieber", "Taylor Swift", "Stitch", "Mickey"]
colors.push("Black")
name.push("Spongebob")

horse = {}

for (i = 0; i < name.length; i++) { 
	horse[name[i]] = colors[i]
}

console.log(horse)

console.log("-----------")

function Computer(ram_size, brand, storage_size){

	this.ram_size = ram_size;
	this.brand = brand;
	this.storage_size = storage_size;

	this.explode = function() {console.log("This " + ram_size + " " + storage_size + " " + brand + " computer" + " will now explode" )}

}
var new_comp = new Computer("8gb", "Mac", "250ssd");
console.log("Our " + (new_comp.brand) + " is a very nice computer");
console.log("It's " + new_comp.storage_size + " can't hold much data");
console.log("But it's "  + new_comp.ram_size + " can process data and execute pretty quickly")
new_comp.explode();




