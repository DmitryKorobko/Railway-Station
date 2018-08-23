# Railway station class
class RailwayStation
  attr_accessor :trains_list
  attr_reader :name, :id

  @@stations = {}

  def initialize(name, id)
    @name = name
    @trains_list = []
    @id = id
    @@stations[name.to_sym] = { station_name: name }
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

  def self.all
    @@stations.each do |key, value|
      puts value[:station_name]
    end
  end
end
