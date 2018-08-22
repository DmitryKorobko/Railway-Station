# Railway station class
class RailwayStation
  attr_accessor :trains_list
  attr_reader :name

  def initialize(name)
    @name = name
    @trains_list = []
  end

  def take_train(train)
    trains_list << train
    puts 'Train passed!'
  end

  def send_train
    puts 'Sent!'
  end

  def show_trains_by_moment
    puts 'Trains on station now:'
    puts trains_list
  end

  def show_trains_by_type
    puts 'Showed!'
  end
end
