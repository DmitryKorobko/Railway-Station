# Route class
class Route
  attr_reader :stations_list, :finish_station, :start_station

  def initialize(start, finish)
    @start_station = start
    @finish_station = finish
    @stations_list = [start, finish]
  end

  def add_station(station_name)
    stations_count = self.stations_list.count
    self.stations_list[stations_count - 1] = station_name
    self.stations_list[stations_count] = self.finish_station
  end

  def delete_station(station_name)
    self.stations_list.delete(station_name)
  end

  def show_stations
    self.stations_list.each do |s|
      puts s
    end
  end
end