def create_list
  puts 'Please enter your grossary list, items should be separated by space'
  items = gets.chomp.split(' ')
  grossary_list  = {}
  index = 0 
  until items.length == index
    grossary_list[items[index]] = 1 
    index += 1
  end
  grossary_list
end

def item_and_qty (list)
  items  = ''
  until items == 'quit'
    puts "enter an item and its qty separated by space, or quit"
    items = gets.chomp
    if items != 'quit'
      new_item = items.split(' ')
      list[new_item[0]]  = new_item[1]
    else
      break
    end
  end
  list
end

def add_qty(list)
  new_list = {}
  list.each do |item , qty|
    puts "How many items from #{item} do wou wanna buy?" 
    new_list[item]  = gets.chomp
  end
  new_list
end

def delete_item (list)
  item  = ''
  until item  == 'quit'
    puts "Which item you want to delete, if no then type quit"
    item  = gets.chomp
    if item != 'quit'
      list.delete(item)
    else
      break
    end
  end
  list
end

def print_list(list)
  puts 'This is your groucery list:'
  list.each {|item, qty| puts "#{qty} of #{item}"}
end


print_list(create_list)


