def mencao (nota)
  if nota < 0 or nota > 10
    puts "Nota invalida"
  elsif nota == 0
    puts "SR"
  elsif nota > 0 and nota < 3
    puts "II"
  elsif nota >= 3 and nota < 5
    puts "MI"
  elsif nota >=5 and nota < 7
    puts "MM"
  elsif nota >= 7 and nota < 9
    puts "MS"
  elsif nota >= 9 and nota <= 10
    puts "SS"
  end
end

nota = gets.chomp
mencao nota.to_f
