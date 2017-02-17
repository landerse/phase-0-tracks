
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

function sharePair(obj1,obj2){
	if (obj1.name == obj2.name || obj1.age == obj2.age){
		return true
	} else {
		return false
	}
}


///////////Release0
// var names = ["Tammy","Mark","Jim","Bo","Supercalifragilisticexpalidocious", "Timmytim"];
// var names2 = ["Tommy","Mank","Jum","Bu","Sapurcelofregalastacuxpoladecauas", "Tommytam"];
// console.log(longestWord(names));
// console.log(longestWord(names2));
///////////Release1
// var person1 = {name:"Jimbo", age: 23};
// var person2 = {name:"Johnbo", age: 23};
// console.log(sharePair(person1,person2))

