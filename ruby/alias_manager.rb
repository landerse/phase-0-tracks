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
name = "Lucas Anderzen"
name_and_alias = {}
alias_name = new_alias(name).join(" ")
p alias_name
