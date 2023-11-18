# Bike

class Bike

  STANDARD_WEIGHT = 200 # lbs
  MAX_CARGO_ITEMS = 10

  attr_accessor :id, :color, :price, :weight, :rented, :cargo

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo = Cargo.new()
  end

  def rent!
    self.rented = true
  end

end


class Cargo
  
  MAX_CARGO_ITEMS = 10

  attr_accessor :cargo_contents

  def initialize()
    @cargo_contents = []
  end

  def add(item)
    self.cargo_contents << item
  end

  def remove(item)
    self.cargo_contents.remove(item)
  end

  def capacity
    MAX_CARGO_ITEMS
  end

  def remaining_capacity
    capacity() - self.cargo_contents.size
  end

end