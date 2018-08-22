# Railway station class
class RailwayStation
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def take_train
    puts 'Passed!'
  end

  def send_train
    puts 'Sent!'
  end

  def show_trains_by_moment
    puts 'Showed!'
  end

  def show_trains_by_type
    puts 'Showed!'
  end
end
