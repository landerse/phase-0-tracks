puts "What is your name?"
user = gets.chomp
puts "How old are you?"
age = gets.chomp
puts "What year were you born?"
year = gets.chomp
puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
bread = gets.chomp
puts "Would you like to enroll in the company's health insurance? (Y/N)"
insurance = gets.chomp

age = age.to_i
year = year.to_i
actual_age = 2017 - year
is_vampire = nil
is_vampire = case actual_age
if age == actual_age && (bread.downcase == "y"|| insurance.downcase == "y" )
	is_vampire = "Probably not a vampire."
elsif (age != actual_age) && (bread.downcase == "n" || insurance.downcase == "n")
	is_vampire = "Probably a vampire."
elsif (age != actual_age) && (bread.downcase == "n" && insurance.downcase == "n")
	is_vampire = "Almost certainly a vampire."
elsif (user == "Drake Cula" || "Tu Fang")
	is_vampire = "Definitely a vampire"
else
	is_vampire = "Results inconclusive."
end
puts "#{is_vampire}"
