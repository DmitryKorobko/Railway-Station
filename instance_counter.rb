# Module InstanceCounter
module InstanceCounter
  @@instances_count = 0

  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  # Module ClassMethods
  module ClassMethods
    @@instances_count = 0

    def instances
      @@instances_count
    end
  end

  # Module InstanceMethods
  module InstanceMethods
    @@instances_count = 0

    protected

    def register_instance
      @@instances_count += 1
    end
  end
end