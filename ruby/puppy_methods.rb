class Puppy

	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end

# A speak method that takes an integer, and then prints "Woof!" that many times
	def speak(number)
		puts 'Woof!' * number
	end

# Aa roll_over method that just prints "*rolls over*"
	def roll_over
		p "*rolls over*"
	end

# A dog_years method that takes an integer (of human years) and converts that number to dog years, returning a new integer.
	def dog_years(human_years)
		(human_years / 7.00).round
	end

	def jump
		puts "Bow-wow!"
	end

	# Add a method to your Puppy class named initialize. It should print "Initializing new puppy instance ..."
	def initialize
		puts "Initializing new puppy instance ..."
	end


end


Puppy.new.fetch("ball")
# Driver code that initializes an instance of Puppy, and verify that the instance can now fetch a ball

Puppy.new.speak(99)

Puppy.new.roll_over

p Puppy.new.dog_years(34)

Puppy.new.jump


# Without changing your driver code, run the program. Does initialize run? When?

