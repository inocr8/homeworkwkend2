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
    # @rates[room.type] = rate2
    # @rates[room.type] = rate3
  end

  # adding guests
    def add_guest(guest)
      @guests[guest.name] = guest
    end


end