require_relative 'instance_counter'

# Route class
class Route
  include InstanceCounter

  attr_reader :stations_list, :finish_station, :start_station, :id

  def initialize(start, finish, id)
    @start_station = start.name
    @finish_station = finish.name
    @stations_list = [start.name, finish.name]
    @id = id
    register_instance
  end

  def add_station(station)
    stations_count = stations_list.count
    stations_list[stations_count - 1] = station.name
    stations_list[stations_count] = finish_station
  end

  def delete_station(station)
    stations_list.delete(station.name)
  end

  def show_stations
    stations_list.each do |s|
      puts s
    end
  end
end
