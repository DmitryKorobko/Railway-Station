# PassengerWagon class
class PassengerWagon < Wagon
  attr_reader :type

  def initialize(id)
    super
    @type = 'Passenger'
  end
end
