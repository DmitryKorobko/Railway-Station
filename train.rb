# Train class
class Train
  attr_accessor :speed, :wagons_count, :type

  def initialize(type = 'passenger')
    @wagons_count = 1
    @speed = 0
    @type = type
  end

  def gain_speed
    self.speed += 10
  end

  def brake
    self.speed = 0
  end

  def take_route
    puts 'Passed!'
  end

  def hook_wagons
    self.wagons_count += 1
  end

  def unhitch_wagons
    self.wagons_count -= 1 if self.wagons_count > 1
  end

  def navigate_by_route
    puts 'Navigated!'
  end

  def show_route_stations(stations = [])
    puts stations
  end
end