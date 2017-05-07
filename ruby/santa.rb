class Santa


# age, which is not passed in on initialization and defaults to 0

# A method that will print "Ho, ho, ho! Haaaappy holidays!"
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end 
	
# An method that takes a cookie type as a parameter and prints "That was a good <cookie type>!" 
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end
	
# An initialize method that prints "Initializing Santa instance ..."
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
	end
	
end


reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end
p santas

# Santa.new.eat_milk_and_cookies('snickerdoodle')
# Santa.new.speak







