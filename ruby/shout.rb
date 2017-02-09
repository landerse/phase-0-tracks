=begin
module Shout
	 def self.yell_angrily(words)
     	words + "!!!" + " :("
  	 end

  	 def self.yelling_happily(words)
  	 	words + "!!!" + " :)"
  	 end

end
puts Shout.yell_angrily("WOOOOOOOOOORDS")
puts Shout.yelling_happily("WORDS WORDS")
=end
module Shout
	def yell_happy(words)
		words + "!!!! :)"
	end

	def yell_angry(words)
		words + "!!!! >:("
	end
end

class Mom
	include Shout
end

class Dad
	include Shout
end
mom = Mom.new
p mom.yell_angry("You're dead")
p mom.yell_happy("I love you")
dad = Dad.new
p dad.yell_angry("You're dead")
p dad.yell_happy("I love you")