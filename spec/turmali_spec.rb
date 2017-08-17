require "spec_helper"

RSpec.describe Turmali do

  it "Number test" do
    expect(Interpreter.new.eval("1").ruby_value).to eq 1
  end

  it "Boolean test" do
    expect(Interpreter.new.eval("true").ruby_value).to eq true
  end  

  it "Assign test" do
    expect(Interpreter.new.eval("a = 2; 3; a").ruby_value).to eq 2
  end    

  it "Method test" do
code = <<CODE
def boo(a):
  a

boo("yah!")
CODE
    expect(Interpreter.new.eval(code).ruby_value).to eq "yah!"
  end    

  it "Open class test" do
code = <<CODE
class Number:
  def ten:
    10

1.ten
CODE
    expect(Interpreter.new.eval(code).ruby_value).to eq 10
  end    

  it "Define class test" do
code = <<CODE
class Pony:
  def awesome:
    true

Pony.new.awesome
CODE
    expect(Interpreter.new.eval(code).ruby_value).to eq true
  end    

  it "If test" do
code = <<CODE
if true:
  "works!"
CODE
    expect(Interpreter.new.eval(code).ruby_value).to eq "works!"
  end       

  it "Interpreter test" do
code = <<CODE
class Awesome:
  def does_it_work:
    "yeah!"

awesome_object = Awesome.new
if awesome_object:
  awesome_object.does_it_work
CODE
    expect(Interpreter.new.eval(code).ruby_value).to eq 'yeah!'
  end       

end
