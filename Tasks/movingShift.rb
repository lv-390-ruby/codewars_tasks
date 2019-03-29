# The function "movingShift" first codes the entire string and then returns an array 
# of strings containing the coded string in 5 parts 
# (five parts because, to avoid more risks, the coded message will be given to five runners,
# one piece for each runner).

def movingShift(s, shift)
  dict = ('a'..'z').to_a
    part_size = (s.size/5.0).ceil
      result = s.chars.map.with_index do |char, index|
        unless char[/[a-zA-Z]/].nil?
          tmp_char = dict.rotate(shift+index)[dict.index(char.downcase)]
          char == char.upcase ? tmp_char.upcase : tmp_char
        else
          char
        end
      end.join.scan(/.{1,#{part_size}}/)
    result << '' if (s.size%4).zero?
  result
end

def demovingShift(arr, shift)
  dict, s = ('a'..'z').to_a, arr.join
    shift = s.size+shift-1
      s.chars.reverse_each.map.with_index do |char, index|
        unless char[/[a-zA-Z]/].nil?
          tmp_char = dict.rotate(index-shift)[dict.index(char.downcase)]
          char == char.upcase ? tmp_char.upcase : tmp_char
        else
          char
        end
      end.reverse.join
end
