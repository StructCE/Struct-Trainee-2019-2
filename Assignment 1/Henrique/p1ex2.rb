nota = gets.chomp.to_f

if nota > 8.9
    puts 'SS'
elsif nota > 6.9
    puts 'MS'
elsif nota > 4.9
    puts 'MM'
elsif nota > 2.9
    puts 'MI'
elsif nota > 0.9
    puts 'II'
else
    puts 'SR'
end

#Considera-se que a nota deverá ser um número positivo menor ou igual a 10