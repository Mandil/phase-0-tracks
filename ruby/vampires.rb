def allergies(allergy)
  allergy == "sunshine"
end

puts "How many employees will be processed?"
n = gets.chomp.to_i

until n == 0

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
  
  allergy = nil 
  sunshine = false

  while !sunshine and allergy != 'done'
    puts "Name any allergies you have?"
    allergy = gets.chomp
    sunshine = allergies(allergy)
  end
  
  if name == 'Drake Cula' || name == 'Tu Fang'
  	results = 'Definitely a vampire.'
    
    elsif sunshine && !(!age && !like_garlic && !insurance)
    	results = 'Probably a vampire.'
    
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
  
  n -= 1 
end
