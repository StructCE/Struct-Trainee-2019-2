def ehbissexto (ano)
  if ano % 400 == 0
    true
  elsif ano % 4 == 0 and ano % 100 != 0
    true
  else
    false
  end
end

ano = gets.chomp
ehbissexto ano.to_i

if ehbissexto ano.to_i
  puts "#{ano} É bissexto"
else
  puts "#{ano} Não é bissexto"
end