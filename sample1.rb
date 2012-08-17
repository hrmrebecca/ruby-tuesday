#!/usr/bin/env ruby
# Changing directory
Dir.chdir("/Users/mom/Rubystuff/NamesBeginFilter")
# In an object instance variable (denoted with '@'), remember a block.
def remember(&a_block)
  @block = a_block
end
 
# Invoke the above method, giving it a block which takes a name.
remember {|name| puts "Hello, #{name}!"}
 
# When the time is right (for the object) -- call the closure!
@block.call("Javier")
