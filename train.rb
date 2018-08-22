# Train class
class Train
  attr_accessor :wagons_count
  attr_reader :speed

  def initialize
    @wagons_count = 1
    @speed = 0
  end

  def initial_speed
    50
  end

  def gain_speed
    gain_speed! if train_stopped?
  end

  def brake
    brake! unless train_stopped?
  end

  def train_stopped?
    speed.zero?
  end

  def take_route
    puts 'Passed!'
  end

  def hook_wagon(wagon)
    self.wagons_count += 1
  end

  def unhitch_wagon(wagon)
    self.wagons_count -= 1 if self.wagons_count > 1
  end

  def navigate_by_route
    puts 'Navigated!'
  end

  def show_route_stations(stations = [])
    puts stations
  end

  private

  attr_writer :speed

  def gain_speed!
    self.speed = initial_speed
  end

  def brake!
    self.speed = 0
  end
end
