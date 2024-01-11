class Car
  attr_accessor :make, :model, :color
  
  def initialize(make, model, color)
    @make = make
    @model = model
    @color = color
  end

  def info
    "Make: #{@make}, Model: #{@model}, Color: #{@color}"
  end
end

