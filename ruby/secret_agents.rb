# OUR METHOD DECLARATIONS

# find out if the secret agent would like to decrypt or encrypt
def decrypt_or_encrypt(operation,password)
	if operation == 'encrypt'
		encrypt(password) # the secret agent would like to encrypt so we call the encryption method 
			elsif operation == 'decrypt'
				decrypt(password) # the secret agent would like to decrypt so we call the decryption method 
			else 
	end
end
				
# To encrypt a password
def encrypt(name)
  length = name.length 
   # starting a counter for each letter in name
while length > 0
  if name[-length] == ' '
    # if there is a space in name then it will remain a space
    elsif name[-length] == 'z'
    name[-length] = 'a'
    # if the letter is z it will converted to a
    elsif 
    name[-length] = name[-length].next
    # the letter will be replace by the letter comes after it in alphabet 

 	end
 	length -= 1

 end
name
end

# To decrypt a password
def decrypt(name)
  alpha = 'abcdefghijklmnopqrstuvwxyz' 
  length = name.length 
  # we're comparing with are versed alphabet so the next letter will be the letter before according to the alphabet
   while length > 0
   abc = alpha.length
   #to compare each letter in name with all the letters in the reverse alphabet
    while abc > 0
      if name[-length] == ' '
          # if there is a space in name then it will remain a space
        elsif name[-length] == 'a'
        name[-length] = 'z'
          # if the letter is a it will converted to z
        abc = 1 # to end the loop since we decrypted on this letter
        
 	      elsif name[-length] == alpha[-abc]
 	      name[-length] = alpha[-abc-1]
 	      abc = 1 # to end the loop since we decrypted on this letter
 	
 	    end
 	abc -= 1 
 	end
 	length -= 1

 end
name
end


# OUR DRIVER CODE

puts "Hello!\n\n"

#Ask the secret agent whether they would like to decrypt or encrypt a password
puts "Do you like to decrypt or encrypt a password?"  
operation = gets.chomp

#If the user entered an invalid input (not 'decrypt' or 'encrypt') we will ask him to answer the question again  
while !(operation == 'decrypt') && !(operation == 'encrypt')
	puts "Sorry I didnt get it, do you like to decrypt or encrypt a password?"
	operation = gets.chomp
end

#Asks for the password  
puts 'What is the password?'
password = gets.chomp

#Conducts the requested operation, prints the result to the screen, and exits
puts "The result is: #{decrypt_or_encrypt(operation,password)}";

#puts encrypt("abc") #should return "bcd"
#puts encrypt("zed") #should return "afe"
#puts decrypt("bcd") #should return "abc"
#puts decrypt("afe") #should return "zed"


#puts decrypt(encrypt('swordfish')) #This is for testing both decrypt & encrypt and the result should be the same origional password as we decrypted & encrypted them

