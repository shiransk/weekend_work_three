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

  def initialize
    @power = false
    @volume = 5
    @channel = 10
  end
end

class Remote 
    
    def initialize(tv)
      @tv = tv 
    end
    
    def toggle_power
      if @tv.power == false
        @tv.power = true 
      elsif @tv.power == true
        @tv.power = false
      end 
    end
    
    def increment_volume
      @tv.volume += 1 
    end
    
    def decrement_volume
      @tv.volume -= 1
    end
    
    def set_channel (channel)
      @tv.channel = channel
    end 
end 

#Driver Test

tv = Tv.new
remote = Remote.new(tv)

puts "TESTING toggle_power(Turning on)..."
puts

result = remote.toggle_power

puts "Your method returned:"
puts result
puts

if tv.power == true
  puts "PASS!"
else
  puts "F"
end

puts "TESTING toggle_power(Turning off)..."
puts

result = remote.toggle_power

puts "Your method returned:"
puts result
puts

if tv.power == false
  puts "PASS!"
else
  puts "F"
end

puts "TESTING increment_volume..."
puts

result = remote.increment_volume

puts "Your method returned:"
puts result
puts

if tv.volume == 6
  puts "PASS!"
else
  puts "F"
end

puts "TESTING decrement_volume..."
puts

result = remote.decrement_volume

puts "Your method returned:"
puts result
puts

if tv.volume == 5
  puts "PASS!"
else
  puts "F"
end

puts "TESTING set_channel..."
puts

result = remote.set_channel(35)

puts "Your method returned:"
puts result
puts

if tv.channel == 35
  puts "PASS!"
else
  puts "F"
end