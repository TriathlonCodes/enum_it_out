module Enumerable
  def p_it_out
    self.each do |x|
      p x
    end
  end

  def hash_it_out
    #changes an array to a hash
    new_hash = {}
    self.flatten
    self.each_with_index do |x, i|
      if i % 2 == 0
        if x.is_a? String
          x.delete! ":"
          x = x.to_sym
        end
        new_hash[x] = self[i+1]
      end
    end
    return new_hash
  end


end

class String
  def arr_it
    #changes string into array of words separated by spaces
    #removes commas
    self.delete! ","
    new_array = self.split
    return new_array
  end

  def hash_it_out
    raise ArgumentError.new("String must have an even number of values") unless self.split.length % 2 == 0
    new_hash = {}
    string = self
    string.delete! ":"
    string.delete! ","
    while string.include? (" ")
      key = string.slice!(/\w*\s/)

      if string.include? (" ")
        value = string.slice!(/\w*\s/)
      else
        value = string.slice!(/\w*/)
      end
      value.delete!(" ")
      key = key.delete!(" ").to_sym
      new_hash[key] = value
    end
    return new_hash
  end
end

### driver code ###
test = [3,4,5,6]
test_string = "name: Stephanie, age: 25"
test_string_2 = "3 4 5 6 8"
test.p_it_out
p test.hash_it_out
p test_string.arr_it
p test_string.arr_it.hash_it_out
p test_string.hash_it_out
# p test_string_2.hash_it_out

