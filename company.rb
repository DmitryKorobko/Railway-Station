# Module Company
module Company
  attr_accessor :company_name

  def self.company_name
    company_name
  end

  def self.company_name=(name)
    self.company_name = name
  end
end