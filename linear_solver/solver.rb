require('debugger')

def solver(eq_1, eq_2)
  a1 = /^[y]\=(.+)[x]/.match(eq_1) ? $1.to_f : 0
  b1 = /[x](.+)$/.match(eq_1) ? $1.to_f : 0
  a2 = /^[y]\=(.+)/.match(eq_2) ? $1.to_f : 1
  b2 = /[x](.+)$/.match(eq_2) ? $1.to_f : 1

  x = (b2 - b1) / (a1 - a2)
  y = a1 * x + b1

  "(#{x.round(4)}, #{y.round(4)})"

end

puts solver("y=2x+2","y=5x-4") == "(2.0, 6.0)"
puts solver("y=-5x","y=-4x+1") == "(-1.0, 5.0)"
puts solver("y=0.5x+1.3","y=-1.4x-0.2") == "(-0.7895, 0.9053)"
