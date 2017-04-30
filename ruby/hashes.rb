
client_details = { 


}

puts "Fill your client information!"

puts 'Whats your client name?'
client_details['name'] = gets.chomp

puts 'How many years old is the client?'
client_details['age'] = gets.chomp.to_i

puts 'How many children they have?'
client_details['children'] = gets.chomp.to_i

puts 'What decoration theme they prefer?'
client_details['decor_theme'] = gets.chomp

puts 'Do they like wood (yes or no)?'
client_details['like_wood'] = gets.chomp[0].downcase == 'y'

puts 'Do they like modern design (yes or none)?'
client_details['like_modern'] = gets.chomp[0].downcase == 'y'


client_details.each {|key, value| puts "#{key} is: #{value}" }

