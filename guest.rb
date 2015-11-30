class Guest

  attr_reader :name, :type, :link

  def initialize(options = {})
    @name = options[:name]
    @type = options[:type]
    @link = options[:link]
    @rooms = {}
  end

# reserving a room
  def reserve(room)
    @rooms[room.number] = room
  end

# checking out (returning the room)
  def check_out(room_number, hotel)
    room = @rooms.delete(room_number)
    hotel.add_room(room)
  end 

# listing the rooms currently reserved
  def list_reserved_rooms
    unless @rooms.empty?
      @rooms.each do |key, room|
      puts room.report_lister
      end
    end
  end

# printing out reports for the class
  def report_lister
    "Name: #{@name}\nGuest type: #{@type}\nLinks: #{@link}\nRooms booked: #{@rooms.size}"
    # "Report run on: " + Time.now.to_s
  end

end