def ftoc(f)
   t = (f.to_f - 32) * 5/9
   return t
end

def ctof(c)
  t = (c.to_f * 9/5) + 32
  return t
end
