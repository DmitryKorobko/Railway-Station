require_relative 'company'

# Wagon class
class Wagon
  include Company

  attr_accessor :hooked
  attr_reader :id

  def initialize(id)
    @hooked = false
    @id = id
    @company_name = ''
  end

  def hook
    self.hooked = true
  end

  def unhook
    self.hooked = false
  end
end
