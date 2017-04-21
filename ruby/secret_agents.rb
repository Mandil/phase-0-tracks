
def encrypt(name)
  length = name.length 
   
while length > 0
  if name[-length] == ' '
    
    elsif name[-length] == 'z'
    name[-length] = 'a'
    
    elsif 
    name[-length] = name[-length].next

 	end
 	length -= 1

 end
name
end

def decrypt(name)
  alpha = 'abcdefghijklmnopqrstuvwxyz' 
  length = name.length 
   while length > 0
   abc = alpha.length
    while abc > 0
      if name[-length] == ' '
        
        elsif name[-length] == 'a'
        name[-length] = 'z'
        abc = 1
        
 	      elsif name[-length] == alpha[-abc]
 	      name[-length] = alpha[-abc-1]
 	      abc = 1
 	
 	    end
 	abc -= 1 
 	end
 	length -= 1

 end
name
end




