nota = gets.to_f

if nota<0
	puts 'nota invalida.'
elsif nota == 0
	puts 'SR.'
elsif nota < 3
	puts 'II.'
elsif nota < 5
	puts 'MI.'
elsif nota < 7
	puts 'MM.'
elsif nota < 9
	puts 'MS.'
elsif nota <=10
	puts 'SS.'
else
	puts 'nota invalida.'
end