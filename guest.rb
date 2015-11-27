class Guest

  attr_reader :name, :type, :link

  def initialize(options = {})
    @name = options[:name]
    @type = options[:type]
    @link = options[:link]
    @rooms = {}
  end

end