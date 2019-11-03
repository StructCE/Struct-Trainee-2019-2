def ehbissexto (ano)
  if ano % 400 == 0
    true
  elsif ano % 4 == 0 and ano % 100 != 0
    true
  else
    false
  end
end

anos = []
anosbissextos = []
ano = 1901

while ano < 2001
  anos.push(ano)
  if ehbissexto ano
    anosbissextos.push(ano)
  end
  ano += 1
end
puts anos
puts
puts anosbissextos

