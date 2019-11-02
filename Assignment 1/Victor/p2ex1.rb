def isBis(ano)
  if ano%4 == 0 || (ano%100 == 0 && ano%400 == 0)
    return true
  else
    return false
  end
end

seculo20 = []
seculo20bis = []

for anos in 1901..2000
  seculo20 << anos
  if isBis(anos)
    seculo20bis << anos << "\n"
  end
end


puts seculo20bis
