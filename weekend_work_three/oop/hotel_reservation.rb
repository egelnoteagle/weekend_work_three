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

puts "Testing Hotel Reservation"
puts

reservation = HotelReservation.new(customer_name: "Derek", date: "9/12/16", room_number: "546")

name = reservation.customer_name
puts "Name:"
puts name
puts

room = reservation.room_number
puts "Room:"
puts room
puts

date = reservation.date
puts "Date:"
puts date
puts

puts "Change Room..."
reservation.room_number = "446"

if reservation.room_number == "446"
  puts "Pass"
else
  puts "Fail"
end  

puts "Add a fridge to room"
reservation.add_a_fridge

if reservation.amenities[0] == "fridge"
  puts "Pass"
else
  puts "Fail"
end      

puts "Add a crib to room"
reservation.add_a_crib

if reservation.amenities[1] == "crib"
  puts "Pass"
else
  puts "Fail"
end  

puts "Add a custom amenity:"

reservation.add_a_custom_amenity("internet")
puts "Here is your updated list of amenities:"
puts reservation.amenities




