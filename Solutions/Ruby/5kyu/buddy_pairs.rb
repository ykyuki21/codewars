def divisors_sum(number)
  sum = 0
  (2..number**0.5).each do |x|
    if number % x == 0
      sum += x
      sum += (number / x) if (number / x) != x
    end
  end
  sum
end

def buddy(start, nd)
  (start...nd).each do |number|
    sm = divisors_sum(number)
    next if sm < start
    
    sn = divisors_sum(sm)
    return "(#{number} #{sm})" if sn == number
  end
  
  "Nothing"
end
