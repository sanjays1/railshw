class Foobar
  def self.baz(array1)
    array1 = array1.map(&:to_i) 
    array2 = array1.map {|x|  x + 2}
    array3 = []
    for number in array2
        if ( number % 2 == 0)
            array3.push(number)
            
        end
    end
    array4 = array3.uniq
    array5 = [] 
    for x in array4
        if ( x < 10)
            array5.push(x)
        end 
    end 
    return array5.inject{|sum,x| sum + x }
  end 
end
