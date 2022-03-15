# How do we create an object in Ruby? Give an example of the creation of an
# object.

require_relative 'eatable'

class Chocolate
  include Eatable

  def initialize
    puts 'A dark embrace awaits you...'
  end
end
