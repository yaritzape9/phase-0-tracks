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
/*
 get rand num

loop to get the max num of the array with rand strings

loop to add in various sizez of strings

push and return array
*/
console.log("release2----------------------------------")
function rand_num(min,max){
	min = Math.ceil(min);
	max = Math.floor(max);
	return Math.floor(Math.random() * (max - min)) + min;
}
var alpha = "abcdefghijklmnopqrstuvwxz"

function rand(int){
var begining_int = 0
var arr = [];	

for (var i = begining_int; i < int; i++){
	var string = '';
	var int_one = rand_num(1,11)
	for (var i_2 = 0; i_2 < int_one; i_2++){
		var int_two = rand_num(0,14)
			string += alpha[int_two];		
		}
	arr.push(string); 
	}
	console.log(arr);
	return(arr);
}
rand(6)
rand(10)
rand(5)
rand(7)

console.log("part2----------------------------------")
longestString(rand(8));
longestString(rand(12));
longestString(rand(2));
longestString(rand(9));
longestString(rand(10));
longestString(rand(6));
longestString(rand(5));
longestString(rand(4));
longestString(rand(3));
longestString(rand(1));


