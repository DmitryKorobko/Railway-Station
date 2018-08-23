require_relative 'company'
require_relative 'instance_counter'
require 'json'
require 'ostruct'

# Train class
class Train
  include Company
  include InstanceCounter

  attr_accessor :wagons_count
  attr_reader :speed, :id

  NUMBER_FORMAT = /^([a-z]|\d){3}-*([a-z]|\d){2}$/i

  @@trains_list = {}

  def initialize(id)
    @wagons_count = 1
    @speed = 0
    @id = id
    @company_name = ''
    @@trains_list[id] = { wagons_count: 1, speed: 0, id: id, company_name: '' }
    validate!
  end

  def valid?
    validate!
  rescue RuntimeError
    false
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

  def self.find(train_id)
    if !@@trains_list[train_id].nil?
      json = @@trains_list[train_id].to_json
      object = JSON.parse(json, object_class: OpenStruct)
      puts 'Success! This train is found:'
      puts object
    else
      puts 'Error! This train is not found!'
    end
  end

  protected

  attr_writer :speed

  def validate!
    raise 'Invalid format number! Try with correct!' if @id !~ NUMBER_FORMAT
    true
  end

  def gain_speed!
    self.speed = initial_speed
  end

  def brake!
    self.speed = 0
  end
end
