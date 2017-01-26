puts "What is your name?"
user = gets.chomp.downcase
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
year = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
bread = gets.chomp.downcase
puts "Would you like to enroll in the company's health insurance? (Y/N)"
insurance = gets.chomp.downcase

actual_age = 2017 - year

is_vampire = nil
if (age == actual_age) && (bread == "y" || insurance == "y")
  is_vampire = "Probably not a vampire."
end
if (age != actual_age) && (bread == "n" || insurance == "n")
  is_vampire = "Probably a vampire."
end
if (age != actual_age) && (bread == "n" && insurance == "n")
  is_vampire = "Almost certainly a vampire."
end
if (user == "drake cula" || user == "tu fang")
  is_vampire = "Definitely a vampire."
end
if (is_vampire != "Probably not a vampire." && is_vampire != "Probably a vampire." && 
	is_vampire != "Almost certainly a vampire." && is_vampire!= "Definitely a vampire.")
	is_vampire = "Results inconclusive."
end
puts "#{is_vampire}"