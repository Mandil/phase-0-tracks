puts "What is your name?" 
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts 'What year were you born?'

year = gets.chomp.to_i
if 2017-year == age
	age = true
elsif age = false
end

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
like_garlic = gets.chomp[0] == 'y'


puts "Would you like to enroll in the company’s health insurance?"
insurance = gets.chomp[0] == 'y'


if name == 'Drake Cula' || name == 'Tu Fang'
	results = 'Definitely a vampire.'

elsif age && like_garlic && insurance
	results = 'Results inconclusive.'

elsif age && (like_garlic || insurance)
	results = 'Probably not a vampire.'

elsif !age && !like_garlic && !insurance
	results = 'Almost certainly a vampire.'
	
elsif !age && (!like_garlic || !insurance)
	results = 'Probably a vampire.'

end

puts results 

