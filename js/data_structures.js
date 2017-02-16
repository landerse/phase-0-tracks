var colors = ["blue","green","yellow","red"];
var names = ["Ed","Edd","Eddy","Plank"];
colors.push("turquoise");
names.push("Rolf");
// console.log(colors);
// console.log(names);
var horses = {};

//Math.floor(Math.random() * (colors.length)) generates a random number between 0 and the amount of indices
horses[names[Math.floor(Math.random() * (names.length))]] = colors[Math.floor(Math.random() * (colors.length))];
console.log(horses)
