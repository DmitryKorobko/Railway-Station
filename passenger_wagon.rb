# PassengerWagon class
class PassengerWagon < Wagon
  attr_reader :type

  def initialize
    @type = 'Passenger'
  end
end
