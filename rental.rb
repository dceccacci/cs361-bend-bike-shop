class Rental

  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end

  def price
    bike_price + bike_weight_price + luggage_weight_price
  end

  def bike_weight_price
    2 * bike_weight
  end

  def luggage_weight_price
    2 * luggage_weight
  end

  def bike_price
    self.bike.price
  end

  def bike_weight
    self.bike.weight
  end

  def luggage_weight
    self.bike.luggage.weight
  end

  def weight
    bike_weight + luggage_weight
  end


end