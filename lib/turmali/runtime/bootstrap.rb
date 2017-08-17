require "turmali/runtime/class"

Constants = {}

Constants["Class"] = TurmaliClass.new                 
Constants["Class"].runtime_class = Constants["Class"] 
Constants["Object"] = TurmaliClass.new                
Constants["Number"] = TurmaliClass.new                
Constants["String"] = TurmaliClass.new

root_self = Constants["Object"].new
RootContext = Context.new(root_self)

Constants["TrueClass"] = TurmaliClass.new
Constants["FalseClass"] = TurmaliClass.new
Constants["NilClass"] = TurmaliClass.new

Constants["true"] = Constants["TrueClass"].new_with_value(true)
Constants["false"] = Constants["FalseClass"].new_with_value(false)
Constants["nil"] = Constants["NilClass"].new_with_value(nil)

Constants["Class"].def :new do |receiver, arguments|
  receiver.new
end

Constants["Object"].def :print do |receiver, arguments|
  puts arguments.first.ruby_value
  Constants["nil"] 
end

Constants["Number"].def :+ do |receiver,arguments|
	result = receiver.ruby_value + arguments.first.ruby_value 
	Constants["Number"].new_with_value(result)
end

Constants["Number"].def :- do |receiver,arguments|
	result = receiver.ruby_value - arguments.first.ruby_value 
	Constants["Number"].new_with_value(result)
end

Constants["Number"].def :* do |receiver,arguments|
	result = receiver.ruby_value * arguments.first.ruby_value 
	Constants["Number"].new_with_value(result)
end

Constants["Number"].def :/ do |receiver,arguments|
	result = receiver.ruby_value / arguments.first.ruby_value 
	Constants["Number"].new_with_value(result)
end

Constants["Number"].def :== do |receiver,arguments|
	result = receiver.ruby_value == arguments.first.ruby_value 
	Constants["Number"].new_with_value(result)
end

Constants["Number"].def :!= do |receiver,arguments|
	result = receiver.ruby_value != arguments.first.ruby_value 
	Constants["Number"].new_with_value(result)
end

Constants["Number"].def :>= do |receiver,arguments|
	result = receiver.ruby_value >= arguments.first.ruby_value 
	Constants["Number"].new_with_value(result)
end

Constants["Number"].def :<= do |receiver,arguments|
	result = receiver.ruby_value <= arguments.first.ruby_value 
	Constants["Number"].new_with_value(result)
end

Constants["Number"].def :> do |receiver,arguments|
	result = receiver.ruby_value > arguments.first.ruby_value 
	Constants["Number"].new_with_value(result)
end

Constants["Number"].def :< do |receiver,arguments|
	result = receiver.ruby_value < arguments.first.ruby_value 
	Constants["Number"].new_with_value(result)
end

Constants["TrueClass"].def :! do |receiver,arguments|
	Constants["false"] 
end

Constants["FalseClass"].def :! do |receiver,arguments|
	Constants["true"] 
end
