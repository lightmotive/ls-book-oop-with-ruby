# frozen_string_literal: true

require_relative 'eatable'

class Chocolate
  include Eatable

  # Read/Write `type`, `grams`, and `zen_state_of_mind`:
  attr_accessor :type, :grams, :zen_state_of_mind
  # Make the `zen_state_of_mind` reader method private:
  private :zen_state_of_mind
  # If one wanted to make the generated `zen_state_of_mind` writer method
  # private, they could change the line above to:
  # `private :zen_state_of_mind, :zen_state_of_mind=`

  # Read-only ivar `cacao_percent` (custom update via `update_cacao_percent`):
  attr_reader :cacao_percent

  def initialize(type, grams)
    # Save `type` and `grams` params to associated ivars:
    self.type = type
    self.grams = grams

    update_cacao_percent
  end

  def update_cacao_percent
    # `cacao_percent` will be updated only in this method; set the ivar here:
    @cacao_percent =
      case type.downcase
      when 'dark' then 70
      when 'very dark' then 85
      else 0
      end
  end
  # Make `update_cacao_percent` private:
  private :update_cacao_percent

  def consider
    # Use `grams`, `type`, `cacao_percent`, and `zen_state_of_mind` ivars:
    "Your desire for a #{grams}g #{type} (#{cacao_percent}%) embrace " \
    "could soon be fulfilled...are you sure you don't want a higher " \
    "percentage?\n" \
    "--#{zen_state_of_mind}--"
  end
end
