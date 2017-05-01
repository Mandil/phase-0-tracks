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
colors.delete_if {|color| color == 'red' || color == 'yellow'}
av_tempreture.delete_if {|month, temp| temp <= 65 }  
p colors
p av_tempreture

# A method that filters a data structure for only items that do satisfy a certain condition
p colors.select {| color | color == "green" }

p av_tempreture.select {|month, temp| month == :Aug} 

