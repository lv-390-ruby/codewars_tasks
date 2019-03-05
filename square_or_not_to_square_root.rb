def square_or_square_root(arr)
  arr.map do |num|
    sqrt = num**0.5
    sqrt % 1 == 0 ? num**0.5 : num**2
  end
end