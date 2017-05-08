class WordGuessing

	def find_index(i,word)
		@array = []
		while word.index(i) != nil
			@array << word.index(i)
			word[word.index(i)] = '*'
		end
		@array
	end
	
end 


puts "Enter a word that you want your friend to guess:"
word = gets.chomp
guessing = WordGuessing.new
guess = []
trials = word.length * 2 
word.length.times {guess << '-'}
used_letters = ''

while trials >= 0 
	puts guess.join(" ") 
	puts 'enter letter'
	letter = gets.chomp 
	if used_letters.include? letter
		puts "you already used #{letter} before!"
		trials += 1 
	elsif word.include? (letter)
		guessing.find_index(letter,word).each do |i|
			guess[i] = letter
			word[i] = '*'
		end
	else
		puts 'wrong'

	end
	if !guess.include?("-")
		puts "Congradulation you win"
		break
	end
	used_letters += letter
	trials -= 1 
	if trials == 0 
		puts 'Your number of trials is done'
		puts 'Game over!!'
		break
	end

end

puts guess.join(" ") 




