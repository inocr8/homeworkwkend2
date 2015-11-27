require 'pry-byebug'
require_relative 'hotel'
require_relative 'guest'
require_relative 'room'
require_relative 'rates'

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
hotel_1.add_guest(Guest.new(name: "Chewbaca", type: "business", link: "Hans Solo"))
hotel_1.add_guest(Guest.new(name: "Hans Solo", type: "business", link: "Chewbaca"))
hotel_1.add_guest(Guest.new(name: "Freddy Krueger", type: "personal", link: "none"))
hotel_1.add_guest(Guest.new(name: "Michael Myers", type: "business", link: "none"))
hotel_1.add_guest(Guest.new(name: "Gareth Gates", type: "personal", link: "none"))
hotel_1.add_guest(Guest.new(name: "Will Smith", type: "personal", link: "none"))
hotel_1.add_guest(Guest.new(name: "Lucille Ball", type: "personal", link: "none"))

# TODO: create the rates per room type
hotel_1.room_rate(Rates.new(name: "Rate1", type: "single", rate: 100, category: "personal"))
hotel_1.room_rate(Rates.new(name: "Rate2", type: "double", rate: 200, category: "personal"))
hotel_1.room_rate(Rates.new(name: "Rate3", type: "single", rate: 200, category: "business"))
hotel_1.room_rate(Rates.new(name: "Rate4", type: "double", rate: 400, category: "business"))
hotel_1.room_rate(Rates.new(name: "Rate4", type: "corporate", rate: 500, category: "business"))

binding.pry;''