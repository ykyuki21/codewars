def zero(args = nil)
  args ? args.call(0) : 0
end

def one(args = nil)
  args ? args.call(1) : 1
end

def two(args = nil)
  args ? args.call(2) : 2
end

def three(args = nil)
  args ? args.call(3) : 3
end

def four(args = nil)
  args ? args.call(4) : 4
end

def five(args = nil)
  args ? args.call(5) : 5
end

def six(args = nil)
  args ? args.call(6) : 6
end

def seven(args = nil)
  args ? args.call(7) : 7
end

def eight(args = nil)
  args ? args.call(8) : 8
end

def nine(args = nil)
  args ? args.call(9) : 9
end

def plus n
  -> (x) { x + n }
end

def minus n
  -> (x) { x - n }
end

def times n
  -> (x) { x * n }
end

def divided_by n
  -> (x) { x / n }
end
