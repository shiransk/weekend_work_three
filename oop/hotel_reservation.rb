# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method
hotel = HotelReservation.new(customer_name: "shiran", date: "june", room_number: "8")


puts "TESTING ability to change a room number..."
puts

hotel.room_number = 9
result = hotel.room_number

puts "Your method returned:"
puts result
puts

if result == 9
  puts "PASS!"
else
  puts "F"
end

puts "TESTING add_a_fridge..."
puts 

hotel.add_a_fridge
result = hotel.amenities
puts "Your method returned:"
puts result
puts

if result[0]== "fridge"
  puts "PASS!"
else
  puts "F"
end

puts "TESTING add_a_crib..."
puts 

hotel.add_a_crib
result = hotel.amenities
puts "Your method returned:"
puts result[1]
puts

if result[1]== "crib"
  puts "PASS!"
else
  puts "F"
end

puts "TESTING add_a_custom_amenity..."
puts 
 
hotel.add_a_custom_amenity("Dinner")
result = hotel.amenities
puts "Your method returned:"
puts result[2]
puts

if result[2]== "Dinner"
  puts "PASS!"
else
  puts "F"
end