# Return the maximal number of watered sections if we create artificial rain
# above exactly one section.
# garden - the array with section's height
# exp [4, 2, 3, 3, 2] return 4. The most optimal choice will be either of the
# sections with the height of 3 because the water will flow to its neighbours
# covering 4 sections altogether: 2, 3, 3, 2.

def artificial_rain(garden)
  max_count = 0
  lowest_height = 0
  section_size = 1
  section_index = 0
  (1...garden.length).each do |i|
    x = garden[i]
    if x < garden[i - 1]
      lowest_height = i
    elsif x > garden[i - 1]
      max_count = [max_count, section_size].max
      section_size = i - lowest_height
      section_index = i
    end
    section_size += 1
  end
  [[max_count, section_size].max, section_index]
end
