class Hotel

  attr_reader :name, :rooms, :guests, :rates

  def initialize(name)
    @name = name
    @rooms = {}
    @guests = {}
    @rates = {}
  end

# adding rooms
  def add_room(room)
    @rooms[room.number] = room
  end

# defining costs per room
  def room_rate(rate)
    @rates[rate.name] = rate
  end

# adding guests
  def add_guest(guest)
    @guests[guest.name] = guest
  end

# listing room
  def list_rooms
    if @rooms.empty?
      "There are no rooms available at #{name} right now, well done on the marketing skills!"
    else
  puts "-------------------\n" + " |*|room report|*| ".upcase + "\n-------------------\n\n"
      room_report = @rooms.map do |key, room|
        room.report_lister
      end
      room_report.join("\n\n")
    end
  end

# listing guests
  def list_guests
    if @guests.empty?
      "There are no guests staying at the #{name} right now, better get your marketing sorted or run a special offer."
    else
  puts "--------------------\n" + " |*|guest report|*| ".upcase + "\n--------------------\n\n"
      guest_report = @guests.map do |key, guest|
        guest.report_lister
      end
      guest_report.join("\n\n")
    end
  end

# listing rates
  def list_rates
    if @rates.empty?
      "There have been no rates set up for the #{name}, are all the rooms free?"
    else
  puts "--------------------\n" + " |*|rates report|*| ".upcase + "\n--------------------\n\n"
      rate_report = @rates.map do |key, rate|
        rate.report_lister
      end
      rate_report.join("\n\n")
    end
  end

# pulling back guest names
  def get_guest(guest_name)
    guest = @guests[guest_name]
  end

# pulling back reserved rooms
  def list_reserved_rooms
    @guests.each do |name, guest|
      guest.list_reserved_rooms
    end
  end

# reserving rooms for guests
  def reserve_room(guest_name, room_number)
    guest = @guests[guest_name]
    room = @rooms.delete(room_number)
    guest.reserve(room)
  end

# booking a room via booking system
  def become_guest(become_guest_answer)
    if become_guest_answer == "yes"
      print "\nWell, that's great news! What is your name? "
    else
      puts "\nDid you maybe mean to call up Pizza Hut? If you did, I could give you a free pepperoni pizza with your room."
    end
  end

# booking a room via booking system
  def room_booking1(room_booking1_answer)
    if room_booking1_answer == "yes"
      puts "\nThat's excellent news, we have plenty of rooms available for single, double and corporate bookings.  Here is a list of rooms available, what type would you like?\n\n #{list_rooms}"
    else
      puts "\nOk, well now you have a guest account you can book a room whenever you like.  We do them by the hour too."
    end
  end

  # # booking a room via booking system
  #   def room_booking2(room_booking2_answer)
  #     if room_booking2_answer == "single"
  #       puts "\nSingle is perfect for you, the cost would be GBP#{rates["Rate1"][:rate]} for personal or GBP#{rates["Rate3"][:rate]} for business."
  #     elsif room_booking2_answer == "double"
  #       puts "\nDouble is perfect for you, the cost would be GBP#{rates["Rate2"][:rate]} for personal or GBP#{rates.["Rate4"][:rate]} for business."
  #     elsif room_booking2_answer == "corporate"
  #       puts "\nCorporate is perfect for you, the cost would be GBP#{rates["Rate5"][:rate]}."
  #     else
  #       puts "\nI'm sorry these rooms were not to your liking, I can recommend the local Youth Hostel for your backpacking needs."
  #     end
  #   end

end