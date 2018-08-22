# Wagon class
class Wagon
  attr_accessor :hooked
  attr_reader :id

  def initialize(id)
    @hooked = false
    @id = id
  end

  def hook
    self.hooked = true
  end

  def unhook
    self.hooked = false
  end
end
