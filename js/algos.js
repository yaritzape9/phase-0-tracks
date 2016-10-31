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
