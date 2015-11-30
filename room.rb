class Room < Hotel

  attr_reader :floor, :number, :name, :type

  def initialize(options = {})
    @number = options[:number]
    @floor = options[:floor]
    @name = options[:name]
    @type = options[:type]
  end

# printing out reports for the class
  def report_lister
    "Number: #{@number}\nFloor: #{@floor}\nName: #{@name}\nType: #{@type}"
    # "Report run on: " + Time.now.to_s
  end

end