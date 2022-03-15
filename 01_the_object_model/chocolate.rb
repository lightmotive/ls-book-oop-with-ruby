# How do we create an object in Ruby? Give an example of the creation of an
# object.

require_relative 'eatable'

class Chocolate
  include Eatable

  def initialize(type)
    @type = type
  end

  def purchase
    puts "A #{@type} embrace awaits you..."
  end
end
