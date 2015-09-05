module Enumerable
  def p_it_out
    if self.is_a? Hash
      self.each do |k, v|
        print "#{k}: "
        p "#{v}"
      end
    else
      self.each do |x|
        p x
      end
    end
  end

  def hash_it_out
    #changes an array to a hash
    raise ArgumentError.new("Array must have an even number of values") unless self.length % 2 == 0
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

