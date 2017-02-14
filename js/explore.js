// Take string, split into characters, put each character back in reverse order in new variable.

function reverse(string) {
	var split = string.split("");
	var reverse = split.reverse();
	var newString = reverse.join("");
	return newString;
}

require('readline');

var reversedString = reverse("apple");
if (1 == 1) {
	console.log(reversedString);
} else {
	console.log("How does 1 not equal 1??");
}