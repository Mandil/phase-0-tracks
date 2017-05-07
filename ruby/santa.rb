class Santa

  attr_reader :ethnicity, :gender
  
 	def initialize(gender, ethnicity)
 		puts "Initializing Santa instance ..."
 		@gender = gender
 		@ethnicity = ethnicity
 		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"].sample
 		@age = rand(140)
 		puts "Santa name: #{@reindeer_ranking}/ gender: #{@gender}/ ethnicity: #{@ethnicity}/ #{@age} years old"
 	end
 	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end 
	
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end
	
	def celebrate_birthday
		@age += 1 
	end
	
	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking.push(reindeer)
	end
	
end


example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
1000.times {Santa.new(example_genders.sample, example_ethnicities.sample)}


# Santa.new.eat_milk_and_cookies('snickerdoodle')
# Santa.new.speak

# Santa.new.get_mad_at("Vixen")
