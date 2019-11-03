string = gets.chomp

if string.ascii_only?
    puts 'Somente ASCII'
else
    puts 'Não ASCII'
end