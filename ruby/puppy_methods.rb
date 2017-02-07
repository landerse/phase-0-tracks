class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	int.times do
  		puts "Woof!"
  	end
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(int)
  	int * 7
  end

  def play_dead
  	puts "*plays dead*"
  end

  def initialize
  	puts "Initializing new puppy instance..."
  end
end

=begin
spot = Puppy.new
spot.fetch("toy")
spot.speak(3)
spot.roll_over
spot.dog_years(4)
spot.play_dead
=end

class Cat

  def initialize
    puts "Initializing new cat instance..."
    
  end

  def purr
  	puts "*purrs*"
  end

  def hiss
  	puts "*hisses*"
  end
end

cats = []
i = 0
while i < 50 do 
	cats << Cat.new
	i += 1
end

cats.each do |cat|
	cat.purr
	cat.hiss
end