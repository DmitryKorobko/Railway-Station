require_relative 'train'
require_relative 'passenger_train'
require_relative 'cargo_train'
require_relative 'wagon'
require_relative 'cargo_wagon'
require_relative 'passenger_wagon'
require_relative 'railway_station'
require_relative 'route'

# MainRailway class
class MainRailway
  def initialize
    actions_selector
  end

  def actions_selector
    puts 'What are you want now?'
    puts 'Create station - enter cs'
    puts 'Create passenger train - enter cpt'
    puts 'Create cargo train - enter cct'
    puts 'Create passenger wagon - enter cpw'
    puts 'Create cargo wagon - enter ccw'
    puts 'Hook train wagon - enter hw'
    puts 'Unhitch train wagon - enter uhw'
    puts 'Take train to station - enter tts'
    puts 'Show list of trains on the station now - enter slt'
    puts 'Show list of stations on the route - enter sls'
    puts 'Quit - enter q'

    action = gets.chomp
    actions_router(action)
  end

  def actions_router(a)
    case a
    when 'cs'
      puts 'What is name of station?'
      station_name = gets.chomp
      puts 'What is identifier of station?'
      station_id = gets.chomp
      puts create_station(station_name, station_id) ? 'Success!' : 'Error!'
      actions_selector
    when 'cpt'
      puts 'What is identifier of train?'
      train_id = gets.chomp
      puts create_train('Passenger', train_id) ? 'Success!' : 'Error!'
      actions_selector
    when 'cct'
      puts 'What is identifier of train?'
      train_id = gets.chomp
      puts create_train('Cargo', train_id) ? 'Success!' : 'Error!'
      actions_selector
    when 'cpw'
      puts 'What is identifier of wagon?'
      wagon_id = gets.chomp
      puts create_wagon('Passenger', wagon_id) ? 'Success!' : 'Error!'
      actions_selector
    when 'ccw'
      puts 'What is identifier of wagon?'
      wagon_id = gets.chomp
      puts create_wagon('Cargo', wagon_id) ? 'Success!' : 'Error!'
      actions_selector
    when 'hw'
      puts ''
    when 'uhw'
      puts ''
    when 'tts'
      puts ''
    when 'slt'
      puts ''
    when 'sls'
      puts ''
    when 'q'
      puts 'Bye!'
    else
      puts 'This action not exist!'
      actions_selector
    end
  end
end

def create_station(name, id)
  RailwayStation.new(name, id)
  true
end

def create_train(type, id)
  type == 'Passenger' ? PassengerTrain.new(id) : CargoTrain.new(id)
  true
end

def create_wagon(type, id)
  type == 'Passenger' ? PassengerWagon.new(id) : CargoWagon.new(id)
  true
end
