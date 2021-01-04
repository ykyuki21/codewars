def isPP(n)
  (2...n).each do |x|
    (2...n).each do |y|
      pow = x ** y
        
      if pow == n
        return [x, y]
      elsif pow > n
        break
      end
    end
    
    return nil if x ** 2 > n
  end
end
