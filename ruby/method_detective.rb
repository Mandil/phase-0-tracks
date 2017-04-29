# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”

"iNvEsTiGaTiOn".swapcase		# => “InVeStIgAtIoN”

"InterNations".swapcase			# => "iNTERnATIONS"


# "zom".<???>
# => “zoom”

"zom".insert(1, 'o')    		# => "zoom"

"Hello".insert(5, '!')    		# => "Hello!"


# "enhance".<???>
# => "    enhance    "

"enhance".insert(0, '    ').insert(-1, '    ')		# => "    enhance    "

"enhance".prepend('    ').insert(-1, '    ')		# => "    enhance    "

"enhance".center(15) 								# => "    enhance    "


"Hello!".insert(0, '    ').insert(-1, '    ')		# => "    Hello!    "

"Hello!".prepend('    ').insert(-1, '    ')			# => "    Hello!    "

"Hello!".center(14) 								# => "    Hello!    "


# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"

"Stop! You’re under arrest!".upcase					# => "STOP! YOU’RE UNDER ARREST!"

"Hello!".upcase										# => "HELLO!"


# "the usual".<???>
#=> "the usual suspects"

"the usual".insert(-1, " suspects")					# => "the usual suspects"

"Hello".insert(-1, "!")								# => "Hello"



# " suspects".<???>
# => "the usual suspects"

" suspects".prepend("the usual")					# => "the usual suspects"

" suspects".insert(0, "the usual")					# => "the usual suspects"


"!".prepend("Hello")					# => "Hello"

"!".insert(0, "Hello")					# => "Hello"



# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"

"The case of the disappearing last letter".chop 		# => "The case of the disappearing last lette"

"The case of the disappearing last letter".slice(0..-2)	# => "The case of the disappearing last lette"


"Hello!".chop 										# => "Hello"

"Hello!".slice(0..-2) 								# => "Hello"


# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

"The mystery of the missing first letter".slice(1..-1)	# => "he mystery of the missing first letter"

"Hello!".slice(1..-1) 									# => "ello!"


# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

"Elementary,    my   dear        Watson!".squeeze(" ")  # => "Elementary, my dear Watson!"

"Hello   !".squeeze(" ")  								# => "Hello !"


# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

"z".ord		# => 122 

"h".ord		# => 104 


# "How many times does the letter 'a' appear in this string?".<???>
# => 4

"How many times does the letter 'a' appear in this string?".count "\\a"		# => 4

"Hello!".count "\\a"  								# => 0

"Hello!".count "\\l"  								# => 2



