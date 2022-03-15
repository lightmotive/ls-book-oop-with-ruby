# How do we create an object in Ruby? Give an example of the creation of an
# object.

require_relative 'eatable'

class Chocolate
  include Eatable

  attr_accessor :type, :grams

  def initialize(type, grams)
    @type = type
    @grams = grams
  end

  def consider
    "Your desire for a #{grams}g #{@type} embrace could soon be fulfilled..."
  end
end
