/*psuedocode 
	I have to start off with an newstring that is empty.
	I will loop throught the string hello with a for loop
	i will then make the newstring = the oldstring index of i plus the newstring
	then itlll keep dong that until it reverses the string.

	I made a var reverse method to make it equal to the value the reversestring method will return

	I also made a simple if statement that will run if the statement is true

*/

function reverseString(str) {
    var newString = "";
    for (var i = 0; i < str.length; i++) {
        newString = str[i] + newString ;
    }
    return newString;
}
 var reversemethod = reverseString('hello');


if (1 == 1){
	console.log(reversemethod);
}
else {
	console.log("hello");
}