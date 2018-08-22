# Wagon class
class Wagon
  attr_accessor :hooked

  def initialize
    @hooked = false
  end

  def hook
    self.hooked = true
  end

  def unhook
    self.hooked = false
  end
end
