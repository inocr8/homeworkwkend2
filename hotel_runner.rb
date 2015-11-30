require 'pry-byebug'
require_relative 'hotel'
require_relative 'guest'
require_relative 'room'
require_relative 'rates'
require_relative 'reservation'

# TODO: create single hotel
hotel_1 = Hotel.new 'Hotel El Codino'

# TODO: add some rooms
hotel_1.add_room(Room.new(number: 1, floor: 1, name: "Room 1-1", type: "single"))
hotel_1.add_room(Room.new(number: 2, floor: 1, name: "Room 1-2", type: "double"))
hotel_1.add_room(Room.new(number: 3, floor: 1, name: "Room 1-3", type: "single"))
hotel_1.add_room(Room.new(number: 4, floor: 1, name: "Room 1-4", type: "double"))
hotel_1.add_room(Room.new(number: 5, floor: 1, name: "Room 1-5", type: "single"))
hotel_1.add_room(Room.new(number: 6, floor: 1, name: "Room 1-6", type: "double"))
hotel_1.add_room(Room.new(number: 7, floor: 1, name: "Room 1-7", type: "single"))
hotel_1.add_room(Room.new(number: 8, floor: 1, name: "Room 1-8", type: "double"))
hotel_1.add_room(Room.new(number: 9, floor: 1, name: "Room 1-9", type: "single"))
hotel_1.add_room(Room.new(number: 10, floor: 1, name: "Room 1-10", type: "double"))
hotel_1.add_room(Room.new(number: 11, floor: 1, name: "The Ruby Suite", type: "corporate"))
hotel_1.add_room(Room.new(number: 12, floor: 1, name: "The Javascript Suite", type: "corporate"))
hotel_1.add_room(Room.new(number: 13, floor: 2, name: "Room 2-1", type: "single"))
hotel_1.add_room(Room.new(number: 14, floor: 2, name: "Room 2-2", type: "double"))
hotel_1.add_room(Room.new(number: 15, floor: 2, name: "Room 2-3", type: "single"))
hotel_1.add_room(Room.new(number: 16, floor: 2, name: "Room 2-4", type: "double"))
hotel_1.add_room(Room.new(number: 17, floor: 2, name: "Room 2-5", type: "single"))
hotel_1.add_room(Room.new(number: 18, floor: 2, name: "Room 2-6", type: "double"))
hotel_1.add_room(Room.new(number: 19, floor: 2, name: "Room 2-7", type: "single"))
hotel_1.add_room(Room.new(number: 20, floor: 2, name: "Room 2-8", type: "double"))
hotel_1.add_room(Room.new(number: 21, floor: 2, name: "Room 2-9", type: "single"))
hotel_1.add_room(Room.new(number: 22, floor: 2, name: "Room 2-10", type: "double"))
hotel_1.add_room(Room.new(number: 23, floor: 2, name: "The C# Suite", type: "corporate"))
hotel_1.add_room(Room.new(number: 24, floor: 2, name: "The HTML Suite", type: "corporate"))
hotel_1.add_room(Room.new(number: 25, floor: 3, name: "Room 3-1", type: "single"))
hotel_1.add_room(Room.new(number: 26, floor: 3, name: "Room 3-2", type: "double"))
hotel_1.add_room(Room.new(number: 27, floor: 3, name: "Room 3-3", type: "single"))
hotel_1.add_room(Room.new(number: 28, floor: 3, name: "Room 3-4", type: "double"))
hotel_1.add_room(Room.new(number: 29, floor: 3, name: "Room 3-5", type: "single"))
hotel_1.add_room(Room.new(number: 30, floor: 3, name: "Room 3-6", type: "double"))
hotel_1.add_room(Room.new(number: 31, floor: 3, name: "Room 3-7", type: "single"))
hotel_1.add_room(Room.new(number: 32, floor: 3, name: "Room 3-8", type: "double"))
hotel_1.add_room(Room.new(number: 33, floor: 3, name: "Room 3-9", type: "single"))
hotel_1.add_room(Room.new(number: 34, floor: 3, name: "Room 3-10", type: "double"))
hotel_1.add_room(Room.new(number: 35, floor: 3, name: "The CSS Suite", type: "corporate"))
hotel_1.add_room(Room.new(number: 36, floor: 3, name: "The Python Suite", type: "corporate"))

# TODO: add some guests
hotel_1.add_guest(Guest.new(name: "Bob Jones", type: "business", link: "none"))
hotel_1.add_guest(Guest.new(name: "Lady Sue Perkins", type: "personal", link: "none"))
hotel_1.add_guest(Guest.new(name: "Mr F Sinatra", type: "personal", link: "Mrs G Sinatra"))
hotel_1.add_guest(Guest.new(name: "Mrs G Sinatra", type: "personal", link: "Mr F Sinatra"))
hotel_1.add_guest(Guest.new(name: "Chewbacca", type: "business", link: "Hans Solo"))
hotel_1.add_guest(Guest.new(name: "Hans Solo", type: "business", link: "Chewbacca"))
hotel_1.add_guest(Guest.new(name: "Freddy Krueger", type: "personal", link: "none"))
hotel_1.add_guest(Guest.new(name: "Michael Myers", type: "business", link: "none"))
hotel_1.add_guest(Guest.new(name: "Gareth Gates", type: "personal", link: "none"))
hotel_1.add_guest(Guest.new(name: "Will Young", type: "personal", link: "none"))
hotel_1.add_guest(Guest.new(name: "Darius Danesh", type: "personal", link: "none"))

# TODO: create the rates per room type
hotel_1.room_rate(Rates.new(name: "Rate1", type: "single", rate: 100, category: "personal"))
hotel_1.room_rate(Rates.new(name: "Rate2", type: "double", rate: 200, category: "personal"))
hotel_1.room_rate(Rates.new(name: "Rate3", type: "single", rate: 150, category: "business"))
hotel_1.room_rate(Rates.new(name: "Rate4", type: "double", rate: 300, category: "business"))
hotel_1.room_rate(Rates.new(name: "Rate5", type: "corporate", rate: 500, category: "business"))

# print a summary report on the hotel
puts "--------------------\n" + "|*|summary report|*| ".upcase + "\n--------------------\n\n"
puts "The #{hotel_1.name} currently has #{hotel_1.guests.size} guest accounts and #{hotel_1.rooms.size} rooms available.\n\n"
puts "Total rooms: #{hotel_1.rooms.size}"
puts "Rate options: #{hotel_1.rates.size}"

# print a report on the guests in the hotel
puts hotel_1.list_guests
puts "\n"

# print a report on the rooms in the hotel
puts hotel_1.list_rooms
puts "\n"

# print a report on the rates in the hotel
puts hotel_1.list_rates
puts "\n"

# reserve a room
hotel_1.reserve_room("Bob Jones", 1)
hotel_1.reserve_room("Lady Sue Perkins", 3)
hotel_1.reserve_room("Mr F Sinatra", 2)
hotel_1.reserve_room("Hans Solo", 4)
hotel_1.reserve_room("Freddy Krueger", 11)

puts "Oh look, it appears we have had some reservations today, lucky ducks us! Management would like to know this, so here is a new list of our guests and the rooms they have reserved:\n\n#{hotel_1.list_guests}"

# report the rooms that have been reserved
puts "--------------------\n" + "|*|reserved rooms|*| ".upcase + "\n--------------------\n\n"
puts "A report on all the rooms that have been reserved:\n\n"
hotel_1.list_reserved_rooms

# time for them to check out
guest1 = hotel_1.get_guest("Bob Jones")
guest1.check_out(1, hotel_1)
guest2 = hotel_1.get_guest("Freddy Krueger")
guest2.check_out(11, hotel_1)
puts "\nLooks like we have had some guest checkouts, management will be wanting a report on that too:\n\n#{hotel_1.list_rooms}"
puts "\nAnd what about our hotel guests and account holders?  Here is a new list of them and any rooms they have reserved:\n\n#{hotel_1.list_guests}"

## New guest to reserve a room.
puts "\nOh look, here is somebody just come in, I wonder if they would like to become a guest at #{hotel_1.name}  Lets ask them."

print "\nHello, welcome to #{hotel_1.name}, would you like to open a guest account with us? yes or no.\n"

become_guest_answer = gets.chomp
puts hotel_1.become_guest(become_guest_answer)
guest_name = gets.chomp
guest_add_1 = hotel_1.add_guest(Guest.new(name:guest_name))

puts "\nI am very pleased to meet you #{guest_name}, would you like to reserve a room? yes or no."

room_booking1_answer = gets.chomp
puts hotel_1.room_booking1(room_booking1_answer)

if room_booking1_answer == "yes"
  puts "\nThat's excellent news, we have plenty of rooms available for single, double and corporate bookings.  Here is a list of rooms available, what type would you like?\n\n #{hotel_1.list_rooms}\n\n"
  room_to_reserve = gets.chomp.to_i
  hotel_1.reserve_room(guest_name, room_to_reserve)
  puts "\nNow that #{guest_name} has reserved themselves a room, lets check which rooms are currently reserved in the #{hotel_1.name}:\n\n"
  hotel_1.list_reserved_rooms
  puts "\nAnd what about our hotel guests and account holders?  Here is a new list of them and any rooms they have reserved:\n\n#{hotel_1.list_guests}"

  else
    puts "That's all folks!"
end

binding.pry;''