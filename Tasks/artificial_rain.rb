# Return the maximal number of watered sections if we create artificial rain
# above exactly one section.
# garden - the array with section's height
# exp [4, 2, 3, 3, 2] return 4. The most optimal choice will be either of the
# sections with the height of 3 because the water will flow to its neighbours
# covering 4 sections altogether: 2, 3, 3, 2.

def artificial_rain(garden)
  max_arr = []
  i = 0
  while i < garden.size
    max_count = 1
    current_height = garden[i]
    i.downto(0).each do |l_index|
      break unless (l_index - 1) >= 0
      break unless garden[l_index - 1] <= current_height
      max_count += 1
      current_height = garden[l_index - 1]
    end

    current_height = garden[i]
    (i..garden.size).each do |r_index|
      break unless (r_index + 1) < garden.size
      break unless garden[r_index + 1] <= current_height
      max_count += 1
      current_height = garden[r_index + 1]
    end
    max_arr[i] = max_count
    i += 1
  end
  max_arr.max
end


puts artificial_rain([2]) # [1] 1
puts artificial_rain([2, 1, 1]) # [3, 2, 2] 3 || right [3, 2, 1] || left [1, 1, 2]
puts artificial_rain([1, 2, 2]) # [1, 3, 3] 3 || right [1, 2, 1] || [1, 2, 3]
puts artificial_rain([2, 1, 3]) # [2, 1, 2] 2 || right [2, 1, 1] || [1, 1, 3]
puts artificial_rain([2, 1, 3, 3]) # [2, 1, 3, 3] 3
puts artificial_rain([1, 2, 1, 2, 1]) # [1, 3, 1, 3, 1] 3
puts artificial_rain([4, 2, 3, 3, 2]) # [2, 1, 4, 4, 1] 4
