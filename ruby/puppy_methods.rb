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

# My program takes 2 random numbers under 100, and random operation + - * / then execute the calculation accordingly, 
# I stored the data in a hash then called each to print only the addition calculations.

class Calculator
  
  def addition(int1, int2) 
  	calculation = {}
    puts "#{int1} + #{int2} = #{int1 + int2}"
    calculation["#{int1} + #{int2} ="] = int1 + int2
    calculation
  end
  
  def subtraction(int1, int2) 
  	calculation = {}
    puts "#{int1} - #{int2} = #{int1 - int2}"
    calculation["#{int1} - #{int2} ="] = int1 - int2
    calculation
  end
  
  def multiplication(int1, int2) 
  	calculation = {}
    puts "#{int1} * #{int2} = #{int1 * int2}"
    calculation["#{int1} * #{int2} ="] = int1 * int2
    calculation
  end
  
  def division(int1, int2) 
  	calculation = {}
    puts "#{int1} / #{int2} = #{(int1 / int2.to_f).round(2)}"
    calculation["#{int1} / #{int2} ="] = (int1 / int2.to_f).round(2)
    calculation
  end
  
  def initialize
		puts "Initializing a random calculation instance ..."
  end

end

repeat = 50

calculation_history = {}
until repeat == 0 

calculation = ["+", "-", "*", "/"]
oeration = calculation[rand(calculation.length)]

if oeration == '+'
  calculation_history = calculation_history.merge(Calculator.new.addition(rand(100),rand(100)))
elsif oeration == '-'
  calculation_history = calculation_history.merge(Calculator.new.subtraction(rand(100),rand(100)))
elsif oeration == '*'
  calculation_history = calculation_history.merge(Calculator.new.multiplication(rand(100),rand(100)))
elsif oeration == '/'
  calculation_history = calculation_history.merge(Calculator.new.division(rand(100),rand(100)))
end

repeat -= 1 

end
  
  
puts 'Addition operations history:'
calculation_history.each do |calculation , result |
	if calculation.split(' ')[1] == '+'
		puts "#{calculation} #{result}"
end
end




Puppy.new.fetch("ball")
# Driver code that initializes an instance of Puppy, and verify that the instance can now fetch a ball

Puppy.new.speak(99)

Puppy.new.roll_over

p Puppy.new.dog_years(34)

Puppy.new.jump


# Without changing your driver code, run the program. Does initialize run? When?


# In puppy_methods.rb, design and implement your own class below the Puppy class -- anything you'd like, 
# but it should have an initialize method and at least two other instance methods. Then do the following:
# Use a loop to make 50 instances of your class.
# Modify your loop so that it stores all of the instances in a data structure.
# Iterate over that data structure using .each and call the instance methods you wrote on each instance.
# So if you wrote a Gymnast class, this is where you'd call .flip and .jump on each of your instances of Gymnast.
# If the steps above feel really unfamiliar, remember that you've been working with classes the entire time --
# strings are instances of the String class. So you can start by using string instances in place of your own class instances,
# if that helps you visualize how the code should come together.



