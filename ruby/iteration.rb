colors = ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]

av_tempreture = {May: 59, Jun: 68,  Jul: 72,	Aug: 73,	Sep: 69,	Oct: 59}

av_tempreture.each {|month, temp| puts "The average tempreture during #{month} is #{temp} °F"}

colors.each {|color| puts "#{color} is one of one of my faviroate colors!"}

colors.map! do |color| 
	if color == "indigo"
		color = "black"
	else color
	end
end


av_tempreture.map do |month, temp|
	if temp > 70
		puts "#{month} average tempreture is above 70" 
	end
end
p colors


# Added a method that iterates through the items, deleting any that meet a certain condition
p colors.delete_if {|color| color == 'red' || color == 'yellow'}
p av_tempreture.delete_if {|month, temp| temp <= 65 }  


# A method that filters a data structure for only items that do satisfy a certain condition
p colors.keep_if {| color | color != 'black' }

p av_tempreture.keep_if {|month, temp| temp > 68} 

# A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

p colors.select {| color | color == "green" }

p av_tempreture.select {|month, temp| month == :Aug} 

# Add a method that will remove items from a data structure until the condition in the block evaluates to false, then stops 

p colors.drop_while {| color | color != "green" }

p av_tempreture.drop_while {|month, temp| month != :Aug} 


