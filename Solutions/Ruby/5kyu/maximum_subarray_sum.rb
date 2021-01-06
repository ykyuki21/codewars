def max_sequence(arr)
  result = 0
  current = 0
  
  arr.each do |number|
    if current + number > 0
      current += number
      result = current if current > result
    else
      current = 0
    end
  end
  
  result
end
