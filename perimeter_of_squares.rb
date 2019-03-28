# Author: Natalia Kozoriz
# The drawing shows 6 squares the sides of which have
# a length of 1, 1, 2, 3, 5, 8.
# It's easy to see that the sum of the
# perimeters of these squares is :
# 4 * (1 + 1 + 2 + 3 + 5 + 8) = 4 * 20 = 80
# Could you give the sum of the perimeters of all the
# squares in a rectangle when there are n + 1 squares
# disposed in he same manner as in the drawing:
# The function perimeter has for parameter n where n + 1
# is the number of squares (they are numbered from 0 to n)
# and returns the total perimeter of all the squares.
def perimeter(n)
  raise 'Argument should be an positive only' if n < 0

  a, b, arr = 0
  n.zero? a
    if n == 1; return b * 8
    else
      (2..n + 1).each do |_i|
        c = a + b
        a = b
        b = c
        arr.push(c)
      end
    end
  arr.insert(0, 1).inject(0, :+) * 4
end

def run_task

end
