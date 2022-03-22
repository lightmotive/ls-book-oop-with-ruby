# frozen_string_literal: true

class Student
  attr_accessor :name, :grade
  protected :grade

  def initialize(name)
    self.name = name
  end

  def better_grade_than?(student)
    grade > student.grade
  end
end
