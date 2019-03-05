def where_is_he(p, bef, aft)
  if (p - bef - aft > 1)
    aft + 1
  else
    p - bef
  end
end
