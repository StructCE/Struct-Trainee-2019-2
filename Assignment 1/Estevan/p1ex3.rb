def bissexto (a)
  if a%400==0
    puts "#{a} é bissexto"
  elsif a%100==0
    puts "#{a} não é bissexto"
  elsif a%4==0
    puts "#{a} é bissexto"
  else
    puts "#{a} não é bissexto"
  end
end

puts "Digite um ano:"

ano = gets.chomp.to_i

bissexto (ano)