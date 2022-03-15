# How do we create an object in Ruby? Give an example of the creation of an
# object.

require_relative 'eatable'

class Chocolate
  include Eatable

  # Read/Write (type, grams)
  attr_accessor :type, :grams
  # Read-only (cacao_percent):
  attr_reader :cacao_percent
  # Write-only (zen_state_of_mind):
  attr_writer :zen_state_of_mind

  def initialize(type, grams)
    @type = type
    @grams = grams

    init_calculate
  end

  def init_calculate
    @cacao_percent =
      case @type.downcase
      when 'dark' then 70
      else 0
      end
  end

  def consider
    "Your desire for a #{@grams}g #{@type} (#{@cacao_percent}%) embrace " \
    "could soon be fulfilled...are you sure you don't want a higher " \
    "percentage?\n" \
    "--#{@zen_state_of_mind}--"
  end
end
