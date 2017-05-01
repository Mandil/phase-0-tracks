

def next_vowel(vowel) # This method take a vowel letter and change it to the next vowel in 'aeiou'
	vowels = ['a', 'e', 'i', 'o', 'u', 'a'] # Added 'a' at the end of the arre so it will change u to a
	index = 0 
	while vowels.length > (index + 1)
		if vowel == vowels[index]
			result = vowels[index+1]
		end
		index += 1
		end
	result
end

def secret_agent (arr) #This method take array as an input and produce a new array as per our secret agent name protocol
  index = 0
  while arr.length > index
  	if ['a', 'e', 'i', 'o', 'u'].include? arr[index] # to check if the compared letter is vowel
  		arr[index] = next_vowel(arr[index])
  	elsif ['a', 'e', 'i', 'o', 'u'].include? arr[index].next # to check if the next value for the letter is a vowel so we get the next value
  		arr[index].next!.next!
  	else
  		arr[index].next! # here to convert everything to the next value alphabet
  	end
  index += 1
  end
  arr.join('').capitalize
end

# getting the secret agent name so we can encrypt it
secret_agent_fake = []
secret_agent_real = []
puts 'Hi!'
result = nil
loop do
	puts 'Whats your name? or type quit to quit'
	result = gets.chomp
	if result == 'quit'
		break
	end

	fullname = result.downcase.split(' ') # converting the full name to 2 parts, first and last name, also downcase all letter to not have an issue when we compare

	fullname = [secret_agent(fullname[1].split('')) , secret_agent(fullname[0].split(''))] # calling the method for the secret agent after swapping first and last name and converting each to array

	secret_agent_fake << result
	secret_agent_real << (fullname.join(' '))

	puts fullname.join(' ') # "Felicia Torres" will become "Vussit Gimodoe" ---> confirmed
end

index = 0
while index < secret_agent_fake.length
	puts "#{secret_agent_real[index]} is actually #{secret_agent_fake[index]}"
	index += 1
end


