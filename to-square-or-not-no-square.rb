#The function takes square root if the number has an integer square root, otherwise square the number.

#square_or_square_root([4,3,9,7,2,1]) 

#-> [2,9,3,49,4,1]

def square_or_square_root(arr)
  arr.map do |num|
    sqrt = num**0.5
    sqrt % 1 == 0 ? num**0.5 : num**2
  end
end

