# frozen_string_literal: true

require_relative 'vehicle'

class MyTruck < Vehicle
  attr_accessor :bed_door_open
  private :bed_door_open=

  def initialize(year, model, color)
    super(year, model, color)

    self.bed_door_open = false
  end

  def open_bed_door
    self.bed_door_open = true
    puts 'You opened the bed door.'
  end

  def close_bed_door
    self.bed_door_open = false
    puts 'You closed the bed door.'
  end

  def status
    "#{super}\nThe bed door is #{bed_door_open ? 'open' : 'closed'}."
  end
end
