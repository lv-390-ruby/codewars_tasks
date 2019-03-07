def count_positives_sum_negatives(lst)
  return ((lst.empty?) || (lst == nil)) ? []: [(lst.reject {|x| x < 1}.count),(lst.reject {|x| x > -1}).sum]
end