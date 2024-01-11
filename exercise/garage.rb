class Garage
  def initialize 
    @cars = []
  end

  def add_car(car)
    @cars << Car
  end

  def remove_car(make, model)
    @cars.delete_if { |car| car.make == make && car.model == model }
  end

  def list_cars
    @cars.map(&:info)
  end

  def find_cars_by_color(color)
    @cars.select { |car| car.color == color }.map(&:info)
  end
end
