class BasicObject
  # The instance methods to not remove from the class when removing
  # other methods.
  KEEP_METHODS = %w"__id__ __send__ __metaclass__ instance_eval instance_exec == equal? initialize method_missing"

  # Remove all but the most basic instance methods from the class.  A separate
  # method so that it can be called again if necessary if you load libraries
  # after Sequel that add instance methods to +Object+.
  def self.remove_methods!
    ((private_instance_methods + instance_methods) - KEEP_METHODS).each{|m| undef_method(m)}
  end
  remove_methods!
end unless defined? BasicObject
