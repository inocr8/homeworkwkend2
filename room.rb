class Room

  attr_reader :floor, :number, :name, :type

  def initialize(options = {})
    @number = options[:number]
    @floor = options[:floor]
    @name = options[:name]
    @type = options[:type]
  end

end