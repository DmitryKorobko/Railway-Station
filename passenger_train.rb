# PassengerTrain class
class PassengerTrain < Train
  attr_reader :type

  def initialize
    @type = 'Passenger'
  end

  def initial_speed
    60
  end

  def hook_wagon(wagon)
    if wagon.type == type && !wagon.hooked
      wagon.hook
      puts 'Success! This wagon is hooked now!'
      super
    elsif wagon.type != type
      puts 'Type of this wagon is not a Passenger!'
    else
      puts 'Error! This wagon is already hooked!'
    end
  end

  def unhitch_wagon(wagon)
    if wagon.hooked
      wagon.unhook
      puts 'Success! This wagon is hooked now!'
      super
    else
      puts 'Error! This wagon is already unhooked!'
    end
  end
end
