require 'rspec'
require_relative '../exercise/garage'
require_relative '../exercise/car'

describe Garage do
  let(:car1) { Car.new("Dodge", "Charger"), "Red") }
let(:car2) {Car.new ("Ford", "Mustang", "White") }

before(:each) do
  Garage.add_car(car1)
  Garage.add_car(car2)
end

after(:each) do
  Garage.clear_cars
end

it 'should list all cars' do
  expect(Garage.list_cars).to eq([car2.info])
end

it 'should find cars by color' do
  expect(Garage.find_cars_by_color("Red")).to eq([car2.info])
end

it 'should remove a car' do
  Garage.remove_car("Ford", "Mustang")
  expect(Garage.list_cars).not_to include(car1.info)
end
end