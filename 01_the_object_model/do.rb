# frozen_string_literal: true

require_relative 'chocolate'

chocolate = Chocolate.new('dark', 28)
chocolate.zen_state_of_mind = "I'm ready!"
puts chocolate.consider
chocolate.savor
