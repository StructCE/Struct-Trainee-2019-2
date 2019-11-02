puts "Digite um ano: "
ano = gets.to_i

if ano%4 == 0 || (ano%100 == 0 && ano%400 == 0)
  puts "O ano eh bissexto."
else
  puts "O ano nao eh bissexto."
end
