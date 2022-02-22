# RSpec.describe 'math calculations' do
#   it 'does basic math' do
#     a, b = 3, 5
#     expect(a + b).to eq(8)
#     expect(a * b).to eq(15)
#     expect((a*2) - b).to eq(1)
#     expect(b - a).to eq(2)
#   end
# end
#
#
# class School
#   attr_accessor :name, :students
#
#   def initialize(name)
#     @name = name
#     @students = []
#   end
# end
# RSpec.describe School do
#   it 'has a name' do
#     school = School.new('Beverly Hills High School')
#     expect(school.name).to eq('Beverly Hills High School')
#   end
#
#   it 'should start off with no students' do
#     school = School.new('Notre Dame High School')
#     expect(school.students).to eq([])
#   end
# end
#
# class Car
#   attr_accessor :fuel_level
#
#   def initialize(fuel)
#     @fuel_level = fuel
#   end
#
#   def fill_up(pump)
#     @fuel_level = pump.dispense_fuel
#   end
# end
#
# class Pump
#   def dispence_fuel
#     100
#   end
# end
#
# class Calculator
#   attr_accessor :n1, :n2
#
#   def initialize(n1, n2)
#     @n1 = n1
#     @n2 = n2
#   end
#
#   def calc(op)
#     if op == '+'
#       add
#     elsif op == '-'
#       subt
#     elsif op == '*'
#       mul
#     elsif op == '/'
#       div
#     else
#       'not valid operator'
#     end
#   end
#
#   def add
#     @n1 + @n2
#   end
#
#   def subt
#     @n1 - @n2
#   end
#
#   def mul
#     @n1 * @n2
#   end
#
#   def div
#     @n1 / @n2
#   end
# end
class Human
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Employee < Human
  attr_accessor :salary
  
  def initialize(name, age)
    super(name, age)
  end
  
  def receive_annual_salary(salary)
    annual_salary = salary * 12
    annual_salary
  end
end

e = Employee.new('john', 25)
p e.receive_annual_salary(2000)