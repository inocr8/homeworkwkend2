class Reservation < Hotel

  attr_reader :name, :size, :date_start, :date_end

  def initialize(options = {})
    @name = options[:name]
    @size = options[:size]
    @date_start = options[:date_start]
    @date_end = options[:date_end]
  end

# confirming the reservation to the guest
  def reservation_confirm
    if @size == 1
    "#{name}, thank you for your reservation. It has been confirmed from #{date_start} until #{date_end}. We look forward to seeing you soon!"
    else
    "#{name}, thank you for your reservation. It has been confirmed for #{size} people from #{date_start} until #{date_end}. We look forward to seeing you all soon!"
    end
  end

  # reserving a room
    def reserve(room)
      @room[room.number] = room
    end

  # checking out (returning the room)
  def check_out(room_number, hotel)
    room = @room.delete(room_number)
    hotel.add_room(room)
  end  

# reserving rooms for guests
  def reserve_room(guest_name, room_number)
    guest = @guests[guest_name]
    room = @rooms.delete(room_number)
    guest.reserve(room)
  end

# listing the rooms currently reserved
  def list_reserved_rooms
    unless @rooms.empty?
      @rooms.each do |key, room|
      puts room.report_lister
      end
    end
  end

end