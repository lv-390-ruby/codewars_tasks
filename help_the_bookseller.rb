def stockList(listOfArt, listOfCat)
  if listOfArt.length == 0 || listOfArt.length == 0
    return ""
  end

  listOfArt = listOfArt.select {|elem| elem.match(/^#{listOfCat}/) }
#   listOfArt.select! {|elem| elem =~ /\A[ABC]/}
  listOfArt = Hash[listOfArt.map {|el| el.split ' '}]
  listOfArt = Hash[listOfArt.values.map(&:to_i).zip(listOfArt.keys)].invert
  answer = Hash[listOfCat.product([0])]
  listOfArt.select do |key, val|
    if answer.has_key?(key[0])
      answer[key[0]] += val
    end
  end
  answer = answer.map{|k, v| "#{k} : #{v}"}.join(') - (').prepend('(') << ")"
end
