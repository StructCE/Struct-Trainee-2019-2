def ehascii? (frase)
  if frase.ascii_only?
    puts "Contem apenas caracteres ascii"
  else
    puts "Contem caracter(es) que não é ascii"
  end
end

frase = gets.chomp
ehascii? frase
