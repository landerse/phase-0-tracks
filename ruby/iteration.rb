def practice
	param1 = "This"
	param2 = "That"
	puts "What would you like?"
	yield(param1, param2)
end

#practice { |param1, param2| puts "I want #{param1} AND #{param2}"}

arr = ["carrot", "cucumber", "apple", "beef"]
h = {
	carrot: "vegetable",
	cucumber: "vegetable",
	apple: "fruit",
	beef: "protein"
}
