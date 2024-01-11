require 'rspec'
require_relative '../car'

describe Car do
  car = Car.new("Chevy", "Camaro", "Black")

  it 'should return correct make' do
    expect(car.make).to eq("Chevy")
  end

  it 'should return correct model' do
    expect(car.model).to eq("Camaro")
  end

  it 'should return correct color' do
    expect(car.color).to eq("Black")
  end

  it 'should return correct info' do
    expect(car.info).to eq("Make: Chevy, Model: Camaro, Color: Black")
  end
end