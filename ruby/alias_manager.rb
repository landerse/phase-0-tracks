#Method to take name and advance letter by one.
#Deals with "z" -> "aa"
def new_alias(full_name)
	names = full_name.split(" ")
	names.reverse!
	names.map! {|each_name| each_name.split("")}
	names.map! do |namearray|
	  namearray.map! do |letter|
	    if letter == "z"
	      letter = "a"
	    else letter.next!
	    end
	end
	names = namearray.join("")
	end
end

#driver code
name_and_alias = {}
name = ""
until name.downcase == "quit"
	puts "Enter name to create alias, or enter 'quit'"
	name = gets.chomp
	if name.downcase == "quit"
	  next
	end
	alias_name = new_alias(name).join(" ")
	puts alias_name
	name_and_alias[name] = alias_name
end

p name_and_alias.each {|key, value| puts "#{key}, also known as #{value}"}