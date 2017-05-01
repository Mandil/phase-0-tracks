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


