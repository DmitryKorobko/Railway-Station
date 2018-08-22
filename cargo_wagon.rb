# CargoWagon class
class CargoWagon < Wagon
  attr_reader :type

  def initialize(id)
    super
    @type = 'Cargo'
  end
end
