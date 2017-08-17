require "turmali/runtime/object"
require "turmali/runtime/context"

class TurmaliClass < TurmaliObject

  attr_reader :runtime_methods

  def initialize(superclass=Constants["Class"])
    @runtime_methods = {}
    @runtime_class = superclass 
  end

  def lookup(method_name)
    method = @runtime_methods[method_name]
    unless method
      if @runtime_superclass
       return @runtime_superclass.lookup(method_name)
      else
       raise "Method not found: #{method_name}"
    end end
    method
  end

  def def(name, &block)
    @runtime_methods[name.to_s] = block
  end

  def new
    TurmaliObject.new(self)
  end

  def new_with_value(value)
    TurmaliObject.new(self, value)
  end
 
end