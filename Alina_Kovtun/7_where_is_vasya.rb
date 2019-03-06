def where_is_he(p, bef, aft)
  if (p - bef - aft > 1)
    aft + 1
  else
    p - bef
  end
end

print where_is_he(3, 1, 1)  # 2
print where_is_he(5, 2, 3)  # 3
