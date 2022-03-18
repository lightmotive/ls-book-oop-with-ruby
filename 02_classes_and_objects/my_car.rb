# frozen_string_literal: true

# Create a class called MyCar. When you initialize a new instance or object of
# the class, allow the user to define some instance variables that tell us the
# year, color, and model of the car. Create an instance variable that is set to
# 0 during instantiation of the object to track the current speed of the car
# as well. Create instance methods that allow the car to speed up, brake, and
# shut the car off.

class MyCar
  attr_accessor :year, :model, :color, :speed
  private :speed

  def initialize(year, model, color)
    self.year = year
    self.color = color
    self.model = model
  end

  def start
    self.speed = 0
    puts "I feel a need for speed in my #{color} #{year} #{model}!"
  end

  def accelerate(number)
    self.speed += number
    puts "You accelerated by #{number} mph and are now traveling at #{self.speed} mph."
  end

  def brake(number)
    self.speed -= number
    puts "You decelerated by #{number} mph and are now traveling at #{self.speed} mph."
  end

  def stop
    self.speed = 0
    puts "OK, that's enough fun for now."
  end
end
