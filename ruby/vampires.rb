puts "How many employees will be processed?"
employees = gets.chomp.to_i

counter = 0
while counter < employees do
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

allergy = ""
until (allergy == "sunshine" || allergy == "done") do
  puts "Name any allergies, one at a time. Type 'done' to exit."
  allergy = gets.chomp.downcase
  if allergy == "sunshine"
    is_vampire = "Probably a vampire."
  end
end
puts "#{is_vampire}"
counter += 1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."