/* algo 1
loop through the array

create an empty variable to store the values in it

use an if statement to check validaty to do
the 2nd one

then we return longest string

*/
console.log("release0----------------------------------")
function longestString(str) {
	var longest_str = '';
		for(var i = 0; i < str.length; i++) {
			if (str[i].length > longest_str.length){
					longest_str = str[i]
			}
		}
		console.log("this is your longest string:");
	console.log(longest_str);
}
// driver code for longest phrase 
 var words = ["hellos","longstring","my name is Yaritza"];
longestString(words);
console.log(longestString(["bob", "Ysvettelana", "Genesis", "Lovely", "Cindy"]))
/*
it takes two objects and checks if objects 
share at least one key-value pair

it will select first key-value pair of object one
and iterate through key-value pairs of object two

if there is a match it will return true
else it will repeat until no more key-value pairs to match
*/
console.log("release1----------------------------------")
function compare(first_obj, second_obj){
	
	var match = 0;
	var keys_arr = Object.keys(second_obj);

	for (var i = 0; i < keys_arr.length; i++){
		var key_to_obj = keys_arr[i];
		if (first_obj[key_to_obj] === second_obj[key_to_obj]){
			match++;
			console.log("true");
		}
	}
	console.log("you have " + match + " match(s)")
}

// driver code for compare
var person1 = {name: "Kurtis", age: 27};
var person2 = {name: "Francesc", age: 28};
compare(person1, person2);
console.log("********")
var person3 = {name: "Joe", age: 20, haircolor:"brown"};
var person4 = {name: "Lana", age: 28, haircolor:"brown"};
compare(person3, person4);
console.log("********")
compare(person1,person4)

