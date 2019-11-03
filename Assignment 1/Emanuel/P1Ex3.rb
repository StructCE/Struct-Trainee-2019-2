ano = gets.to_i

if ano%400 == 0
	puts 'eh bissexto.'
elsif ano%100 == 0
	puts 'nao eh bissexto.'
elsif ano%4 == 0
	puts 'eh bissexto.'
else
	puts 'nao eh bissexto.'
end