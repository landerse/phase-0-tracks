#Prompt user to enter information 
#Convert answers to appropriate data type
#Store answers in keys using symbol syntax
#Print hash to screen when all information is entered
#Ask user if they want to change a key
#If yes, take input, update key, and print again.
#If input is "none" skip and end.

client_details = {}
puts "Enter client name:"
client_details[:name] = gets.chomp
puts "Enter #{client_details[:name]}'s age:"
client_details[:age] = gets.chomp.to_i
puts "How many children does #{client_details[:name]} have?"
client_details[:num_kids] = gets.chomp.to_i
puts "What is #{client_details[:name]}'s decor theme?"
client_details[:decor_theme] = gets.chomp
puts "Has #{client_details[:name]} paid their deposit?(y/n)"
client_details[:deposit_paid] = gets.chomp.downcase
if client_details[:deposit_paid] == ("y" || "yes")
	client_details[:deposit_paid] = true
else
	client_details[:deposit_paid] = false
end
puts client_details
puts "Would you like to update a key? If yes, enter desired key to change. If no, enter 'none'" 
update_key = gets.chomp.to_sym
if (client_details.key?(update_key))
  puts "Enter new key name:"
  new_key = gets.chomp.to_sym
  client_details[new_key] = client_details.delete(update_key)
  puts client_details
end
if (update_key.to_s == "none")
  puts client_details
end