# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "yeppii" + " :)"
#   end

# end

# p Shout.yell_angrily('WTF')
# p Shout.yelling_happily('wawa wewa')


module Shout
  def yell(words)
    puts words + " !!!" + " :)"
  end
end

class Taxi_Rider
	include Shout
end

class Flight_Attendant
	include Shout
end

Taxi_Rider.new.yell("Taxiii")
Flight_Attendant.new.yell("Buckle Up")

