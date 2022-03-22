# frozen_string_literal: true

require_relative 'student'

joe = Student.new('Joe')
joe.grade = 100

bob = Student.new('Bob')
bob.grade = 95

puts "Well done, #{joe.name}!" if joe.better_grade_than?(bob)
