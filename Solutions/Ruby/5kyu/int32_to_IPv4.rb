def int32_to_ip(int32)
  format('%032d', int32.to_s(2)).scan(/.{8}/).map{|n| n.to_i(2)}.join('.')
end
