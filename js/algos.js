//algo 1-----------------------------------------------------------

/*
first we find a way to loop through the array

then we create an empty variable so you can get
the index and make it equal to it

using an if statement to check validaty to do
the 2nd one

then we return longest string

*/
console.log("release0 ----------------------------------")
function longestStringInArr(arr_str) {
	var longest_str = '';
		for(var i = 0; i < arr_str.length; i++) {
			if (arr_str[i].length > longest_str.length){
					longest_str = arr_str[i]
			}
		}
		console.log("this is your longest string:");
	console.log(longest_str);
}
// driver code for longest phrase 
 var phrases = ["long phrase","longest phrase","longer phrase"];
longestStringInArr(phrases);

//algo 2------------------------------------------------------------
/*
first it takes two objects and checks if objects 
share at least one key-value pair

it will select first key-value pair of object one
and iterate through key-value pairs of object two

if there is a match it will return true
else it will repeat until no more key-value pairs to match
*/
console.log("release1 ----------------------------------")
function compare(first_obj, second_obj){
	
	var matches = 0;
	var keys_arr = Object.keys(second_obj);

	for (var i = 0; i < keys_arr.length; i++){
		var key_to_obj = keys_arr[i];
		if (first_obj[key_to_obj] === second_obj[key_to_obj]){
			matches++;
			console.log("true");
		}
	}
	console.log("you have " + matches + " match(s)")
}

// driver code for compare
var person1 = {name: "George", age: 27};
var person2 = {name: "Leo", age: 28};
compare(person1, person2);
console.log("********")
var person3 = {name: "Joe", age: 12, haircolor:"brown"};
var person4 = {name: "Lina", age: 28, haircolor:"brown"};
compare(person3, person4);
console.log("********")
compare(person1,person4)

//algo 3------------------------------------------------------------
/*
first find out how to get rand num

then loop to get the max num of the array you want with rand strings

then loop again to add in various sizez of strings

then push all of that and return array
*/
console.log("release2 ----------------------------------")
function get_rand_num(min,max){
	min = Math.ceil(min);
	max = Math.floor(max);
	return Math.floor(Math.random() * (max - min)) + min;
}
var alphabet = "abcdefghijklmnopqrstuvwxz"

function rand(int){
var begining_int = 0
var arr = [];	

for (var i = begining_int; i < int; i++){
	var string = '';
	var int_one = get_rand_num(1,11)
	for (var i_2 = 0; i_2 < int_one; i_2++){
		var int_two = get_rand_num(0,14)
			string += alphabet[int_two];		
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

console.log("part 2 or release 2----------------------------------")
longestStringInArr(rand(8));
longestStringInArr(rand(12));
longestStringInArr(rand(2));
longestStringInArr(rand(9));
longestStringInArr(rand(10));
longestStringInArr(rand(6));
longestStringInArr(rand(5));
longestStringInArr(rand(4));
longestStringInArr(rand(3));
longestStringInArr(rand(1));

