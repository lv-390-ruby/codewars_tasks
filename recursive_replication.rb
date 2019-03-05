def replicate(times, number)
  times > 0 ? arr = [number] + replicate(times-1,number) : []
end