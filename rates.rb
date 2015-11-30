class Rates < Hotel

  attr_reader :name, :type, :rate, :category

  def initialize(options = {})
    @name = options[:name]
    @type = options[:type]
    @rate = options[:rate]
    @category = options[:category]
  end

# printing out reports for the class
  def report_lister
    "Name: #{@name}\nType: #{@type}\nRate: #{@rate}\nCategory: #{@category}"
    # "Report run on: " + Time.now.to_s
  end

end