# def add(a, b)
#   res = a + b
#   res
# end
#
# RSpec.describe 'check add method' do
#   it 'should provide a result of sum of two integers' do
#     expect(add(3,4)).to eq(7)
#   end
# end
#
#
#
# class Human
#   attr_reader :name, :age, :position, :gender
#
#   def initialize(name, age, position)
#     @name = name
#     @age = age
#     @position = position
#   end
# end
#
# class Worker < Human
#   attr_accessor :annual_salary
#
#   def initialize(name, age, position, annual_salary)
#     super(name, age, position)
#     @annual_salary = annual_salary
#   end
#
#   def introduce
#     "Hello, my name is #{@name} and I'm #{@age}. I'm #{@position} and my salary is $#{@annual_salary}."
#   end
# end

# RSpec.describe Worker do
#   let(:worker) { Worker.new('John', 25, 'Senior Manager', 100000) }
#
#   it 'has name' do
#     expect(worker.name).to eq('John')
#   end
#
#   it 'has age' do
#     expect(worker.age).to eq(25)
#   end
#
#   it 'has position' do
#     expect(worker.position).to eq('Senior Manager')
#   end
#
#   it 'has annual salary' do
#     expect(worker.annual_salary).to eq(100000)
#   end
#
#   it 'has introduced' do
#     expect(worker.introduce).to eq("Hello, my name is John and I'm 25. I'm Senior Manager and my salary is $100000.")
#   end
# end
#


# RSpec.describe Car do
#   describe '#fill_up' do
#     it 'should have the max fuel' do
#       car = Car.new(50)
#       pump = double('Pump', dispense_fuel: 100)
#
#       car.fill_up(pump)
#
#       expect(car.fuel_level).to eq(100)
#     end
#   end
# end
require_relative '../test'
# RSpec.describe Calculator do
#   it 'performs operations' do
#     calc = Calculator.new(10,5)
#     expect(calc.calc('*')).to eq(50)
#   end
# end
#
RSpec.describe Employee do
  let(:employee) { Employee.new('john', 25) }

  it 'should validate name and age' do
    expect(employee.name).to eq('john')
    expect(employee.age).to eq(25)
  end

  it 'should check attributes' do
    expect(employee).to have_attributes(name: 'john', age: 25)
  end

  it 'should validate age over 18' do
    expect(employee.age).to satisfy { |age| age >= 18 }
  end
end