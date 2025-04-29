class AbstractClass
  class << self
    def template_method
      common_step_1
      specific_step
      common_step_2
    end

    def common_step_1 = puts("Common step 1")

    def common_step_2 = puts("Common step 2")

    # This is the method that should be implemented in the sublcasses
    def specific_step = raise NotImplementedError, "Subclasses must implement this method"
  end
end

class ConcreteClassA < AbstractClass
  class << self
    def specific_step = puts "Specific step for ConcreteClassA"
  end
end

class ConcreteClassB < AbstractClass
  class << self
    def specific_step = puts "Specific step for ConcreteClassB"
  end
end

ConcreteClassA.specific_step
ConcreteClassA.template_method

#its a behavioral design pattern that defines a general structure of an algorithm in base class, but allows the subclasses to implement specific steps to this algorithm without changing the base structure