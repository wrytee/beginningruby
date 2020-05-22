#!/home/ubuntu/.rvm/rubies/ruby-2.6.3/bin/ruby
# boolean_golf.rb

class Array
  
  def my_join(separator1=', ', separator2=' and ')
    modified_join(separator1, separator2)
  end
  
  protected
  
  def modified_join!(separator1, separator2)
    last_one = self.pop()
    join(separator1) + separator2 + last_one.to_s
  end
  
  def modified_join(separator1, separator2)
    self.dup.modified_join!(separator1, separator2)
  end
end
