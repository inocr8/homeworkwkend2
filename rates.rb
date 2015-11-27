class Rates

  attr_reader :name, :type, :rate, :category

  def initialize(options = {})
    @name = options[:name]
    @type = options[:type]
    @rate = options[:rate]
    @category = options[:category]
  end

end