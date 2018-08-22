# Railway station class
class RailwayStation
  attr_accessor :trains_list
  attr_reader :name, :id

  def initialize(name, id)
    @name = name
    @trains_list = []
    @id = id
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
