# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Tv 
attr_accessor :power, :volume, :channel

  def initialize(tv_status)
    @power = tv_status[:power]
    @volume = tv_status[:volume]
    @channel = tv_status[:channel]
  end
end

class Remote
  attr_accessor :tv

  def initialize(television)
    @tv = television
  end

  def toggle_power
    if tv.power == "on"
      tv.power = "off"
    else
      tv.power = "on"
    end    
  end

  def increment_volume
    tv.volume += 1
  end

  def decrement_volume
    tv.volume -= 1
  end

  def set_channel(new_channel)
    tv.channel = new_channel
  end
end

#------Driver Code---------------------------------  

tv_one = Tv.new(power: "off", volume: 1, channel: 3)
remote_one = Remote.new(tv_one)

puts tv_one.power
puts tv_one.channel
puts tv_one.volume
puts

remote_one.toggle_power
if tv_one.power == "on"
  puts "Pass"
else
  puts "Fail"
end  

remote_one.increment_volume
if tv_one.volume == 2
  puts "Pass"
else
  puts "Fail"
end    









