def buddy(start, limit)
  (start...limit).each do |number|
    sm = (1..number/2).select{ |x| number % x == 0 }.sum
    next if sm < start
    
    sn = (1..(sm-1)/2).select{ |y| (sm-1) % y == 0 }.sum
    return p "(#{number} #{sm-1})" if (sn-1) == number
  end
  
  p "Nothing"
end
