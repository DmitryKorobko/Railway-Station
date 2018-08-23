require_relative 'company'
require_relative 'instance_counter'

# Wagon class
class Wagon
  include Company
  include InstanceCounter

  attr_accessor :hooked
  attr_reader :id

  def initialize(id)
    @hooked = false
    @id = id
    @company_name = ''
    register_instance
  end

  def hook
    self.hooked = true
  end

  def unhook
    self.hooked = false
  end
end
