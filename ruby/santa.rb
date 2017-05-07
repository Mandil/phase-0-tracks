class Santa

  attr_reader :ethnicity
  attr_accessor  :gender

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
 	def initialize
 		puts "Initializing Santa instance ..."
 	end
	
	def celebrate_birthday
		santa_age = 1 
	end
	
	def get_mad_at(reindeer, reindeer_ranking)
		index = reindeer_ranking.index(reindeer)
		swap = reindeer_ranking[index]
		reindeer_ranking.delete_at(index)
		reindeer_ranking.push(swap)
		reindeer_ranking
	end
	
end


reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end
# p santas

# Santa.new.eat_milk_and_cookies('snickerdoodle')
# Santa.new.speak

Santa.new.get_mad_at("Vixen", reindeer_ranking)
p reindeer_ranking




\