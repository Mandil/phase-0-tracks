class Santa

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
	
end

Santa.new.eat_milk_and_cookies('orios')

Santa.new.speak