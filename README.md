# Turmali

![Turmali Logo](turmali.png "Turmali Logo")

## Turmali is a website building language.

	▪ As in Python, blocks of code are delimited by their indentation.
	▪ Classes are declared with the class keyword.
	▪ Methods can be defined anywhere using the def keyword.
	▪ Identifiers starting with a capital letter are constants which are globally accessible.
	▪ Lower-case identifiers are local variables or method names.
	▪ If a method has a receiver and no argument, parenthesis can be skipped.
	▪ The last value evaluated in a method is its return value.
	▪ Everything is an object.

## Example

```example.tml 
class Turmali:
  def name:
    "hello eiffel"
  def method:
    a = 5
    if a > 3.0:
      a = 3.4
      b = 5.7
      c = a + b
      c

tml = Turmali.new
print(tml.name)    
print(tml.method)   
```

## Requirement 

### windows

https://rubyinstaller.org/ 

### mac osx 

Since now all Mac OSX system preinstalled ruby enviroment, that's not a big issue.

recommend install ruby through:

1: rbenv https://github.com/rbenv/rbenv

2: rvm http://www.rvm.io/

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'turmali'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install turmali
    or 
    $ sudo gem install turmali # require admin role

## Usage

	$ tml example.tml # turmali interpreter mode
	$ tml   		  # turmali repl console mode          

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
