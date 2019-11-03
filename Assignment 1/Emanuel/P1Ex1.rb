string = gets.chomp
if string.ascii_only?
	puts 'somente ascii.'
else
	puts 'nao somente ascii.'
end