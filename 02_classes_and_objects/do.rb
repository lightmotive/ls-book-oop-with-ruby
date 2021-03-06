# frozen_string_literal: true

require_relative 'my_car'
require_relative 'my_truck'
require_relative 'vehicle'
require_relative 'Chargeable'

p Chargeable.ancestors
p Vehicle.ancestors

car = MyCar.new(2017, 'Mazda3', 'Silver')
p MyCar.ancestors
car.spray_paint('Red')
car.start
car.accelerate(60)
car.brake(30)
car.stop
puts car.status
puts car
puts car.age

p Vehicle.gas_mileage(75, 2)

truck = MyTruck.new(2022, 'Tesla Cybertruck', 'Aluminum')
p MyTruck.ancestors
truck.start
truck.open_bed_door
truck.close_bed_door
truck.accelerate(75)
truck.brake(25)
truck.stop
puts truck.status
puts truck
truck.plug_in
truck.unplug

puts truck.age

puts "Total vehicles created: #{Vehicle.vehicles_created}"
