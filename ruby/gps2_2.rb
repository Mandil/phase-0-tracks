def create_list(items_list)
  items_list = items_list.split(' ')
  grossary_list  = {}
  items_list.each { |item| grossary_list[item] = 1}
  grossary_list
end

def print_list(list)
  puts 'This is your groucery list:'
  list.each {|item, qty| puts "#{qty} of #{item}"}
end

# the method below is used for both 1) Add an item with a quantity to the list, 2) Update quantities for items in your list
def item_and_qty(list, item, qty)
  list[item] = qty
  list
end

def delete_item(list, item)
  list.delete(item)
  list
end


puts 'Please enter your grosary list, items should be separated by space'
items_list = gets.chomp
grossary_list = create_list(items_list)


item  = ''
until item == 'quit'
  puts 'Do you want to add an item with a quantity to the list (yes or no)?'
  if gets.chomp[0].downcase == 'y'
    puts "Enter an item you want to add:"
    item = gets.chomp
    puts "What is the needed quentity of #{item}?"
    qty = gets.chomp 
    grossary_list = item_and_qty(grossary_list, item, qty)
  else
    break
  end
end


item  = ''
until item == 'quit'
  puts 'Do you want to to remove an item from your grossary list (yes or no)?'
  if gets.chomp[0].downcase == 'y'
    puts "Enter the item you want to remove:"
    item = gets.chomp
    grossary_list = delete_item(grossary_list, item)
  else
    break
  end
end


item  = ''
until item == 'quit'
  puts 'Do you want to update the quantity of an item in your grossary list (yes or no)?'
  if gets.chomp[0].downcase == 'y'
    puts "Enter the item you want to update:"
    item = gets.chomp
    puts "What is the updated quentity of #{item}?"
    qty = gets.chomp 
    grossary_list = item_and_qty(grossary_list, item, qty)
  else
    break
  end
end

print_list(grossary_list)

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # convert the string to array and each array item to a hash key
  # set default quantity to 1
# output: a list of items as a hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: add the item name, and optional quantity to the list
# output: a list of items as a hash

# Method to remove an item from the list
# input: list, item name
# steps: delete the key (item name)
# output: a list of items as a hash

# Method to update the quantity of an item
# input: list, item name, and optional quantity
# steps: add the item name, and optional quantity to the list, it will replace the existing one
# output: a list of items as a hash

# Method to print a list and make it look pretty
# input: list
# steps: print the list in a nice way
# output: no output

# Commented reflection:

# What did you learn about pseudocode from working on this challenge?
# Pseudocode can be written in many different ways, its a good guide to formulate our logic writing a program

# What are the tradeoffs of using arrays and hashes for this challenge?
# We used only hash in this exersise as we thought it is the right one to use, at a certen point we thought to use an array as we wanted to use some methods that works on with arrays but then we founded an alternative way to reach to the same result using only hash

# What does a method return?
# All methods that we defined here returns a hash 

# What kind of things can you pass into methods as arguments?
# In this exersise we passed mostly hashes, but in general we can pass string, intiger, float, boolean, hash, array .... any type of data

# How can you pass information between methods?
# By calling them inside each other example: print_list(update_qty(delete_item(item_and_qty(create_list))))

# What concepts were solidified in this challenge, and what concepts are still confusing?