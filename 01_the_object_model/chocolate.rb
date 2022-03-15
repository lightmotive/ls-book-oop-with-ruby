# How do we create an object in Ruby? Give an example of the creation of an
# object.

require_relative 'eatable'

class Chocolate
  include Eatable

  def initialize(type)
    @type = type
  end

  def purchase
    "Your desire for a #{@type} embrace will soon be fulfilled..."
  end
end
