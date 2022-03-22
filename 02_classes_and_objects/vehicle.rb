# frozen_string_literal: true

class Vehicle
  attr_accessor :year, :model, :color, :speed
  private :year=, :model=, :color=, :speed=

  def initialize(year, model, color)
    self.year = year
    self.color = color
    self.model = model
  end

  # Exercise: add class method that calculates miles per gallon
  def self.gas_mileage(miles, gallons)
    miles.fdiv(gallons).round(1)
  end

  def spray_paint(color)
    self.color = color
    puts "Nice #{color}!"
  end

  def start
    self.speed = 0
    puts "I feel a need for speed in my #{self}!"
  end

  def change_speed(by_number)
    self.speed += by_number
    puts "You #{by_number.positive? ? 'accelerated' : 'decelerated'} by #{by_number.abs} mph and are now traveling at #{self.speed} mph."
  end
  private :change_speed

  def accelerate(number)
    change_speed(number)
  end

  def brake(number)
    change_speed(-number)
  end

  def stop
    self.speed = 0
    puts "OK, that's enough fun for now."
  end

  def to_s
    "#{color} #{year} #{model}"
  end
end
