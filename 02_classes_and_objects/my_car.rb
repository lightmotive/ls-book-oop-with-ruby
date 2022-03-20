# frozen_string_literal: true

# Create a class called MyCar. When you initialize a new instance or object of
# the class, allow the user to define some instance variables that tell us the
# year, color, and model of the car. Create an instance variable that is set to
# 0 during instantiation of the object to track the current speed of the car
# as well. Create instance methods that allow the car to speed up, brake, and
# shut the car off.

class MyCar
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
    puts "I feel a need for speed in my #{color} #{year} #{model}!"
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
end
