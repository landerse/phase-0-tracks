
function longestWord(array) {
  var array_holder = array;
  var longestWord = 0;
  var lengthHolder = 0;
  var wordHolder = "";
  
  for(var i = 0; i < array_holder.length; i++){
    if(array_holder[i].length > lengthHolder){
	lengthHolder = array_holder[i].length;
	wordHolder = array_holder[i];
     }
  }
  return wordHolder;
}
var names = ["Tammy","Mark","Jim","Bo","Supercalifragilisticexpalidocious", "Timmytim"];
var names2 = ["Tommy","Mank","Jum","Bu","Sapurcelofregalastacuxpoladecauas", "Tommytam"];
console.log(longestWord(names));
console.log(longestWord(names2));