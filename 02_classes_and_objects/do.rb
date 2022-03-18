# frozen_string_literal: true

require_relative 'my_car'

car = MyCar.new(2017, 'Mazda3', 'Silver')

car.start
car.accelerate(60)
car.brake(30)
car.stop