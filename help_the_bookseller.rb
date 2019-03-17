def stockList(listOfArt, listOfCat)
  return "" if listOfArt.empty? or listOfCat.empty?

  listOfArt = Hash[listOfArt.map {|el| el.split ' '}]
  listOfArt.select! {|key, val| listOfCat.join.include? key[0] }
  listOfArt = Hash[listOfArt.values.map(&:to_i).zip(listOfArt.keys)].invert
  answer = Hash[listOfCat.product([0])]
  listOfArt.select do |key, val|
    if answer.has_key?(key[0])
      answer[key[0]] += val
    end
  end
  answer = answer.map{|k,v| "#{k} : #{v}"}.join(') - (').prepend('(') << ")"
end