/*psuedocode 
	-I have to start off with a variable that will hold my new string. So it will be an empty string.
	-I will loop through the string.
	-I will then make my new variable equal to my string index of i plus my new string so as it adds together it will reverse the string
	-Then the loop will break when its done going through the whole string.
	-From there I will return the value of my new variable which I will name newString.

	-Then I will call my method and put in a string. 
	- From there I ill make an if and else statement that will print out the method answer or Not equal. I also stored my method in a variable to make it easier.
*/

function reverseString(string) {
     var newString = "";
    for (var i = 0; i < string.length; i++) {
        newString = string[i] + newString ;
    }
    return newString;
}
 reverseString('This works and its true');