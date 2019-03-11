#The function should return an array containing repetitions of the number argument. 

#If the times argument is negative, return an empty array.

#replicate(3, 5) should return [5,5,5]

def replicate(times, number)
  times > 0 ? arr = [number] + replicate(times-1,number) : []
end


