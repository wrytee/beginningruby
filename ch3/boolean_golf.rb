#!/home/ubuntu/.rvm/rubies/ruby-2.6.3/bin/ruby
# boolean_golf.rb

=begin rdoc
This adds handy true? and false? methods to every object. 
The most succinct way seemed to be declaring these methods in 
this order. 
Note that to_b is an alias to the true?() method.
=end

class Object
  
  def false?()
    not self
  end
  
  def true?()
    not false?
  end
  
  alias :to_b :true?
  
end

