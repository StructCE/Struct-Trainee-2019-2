# Mensagem para o usuario
print "Por favor, informe a nota do aluno: "

# Recebe a nota como input do usuario (gets) sem quebra de linha (chomp) e ja no formato float (to_f)
nota = gets.chomp.to_f

# Logica para mencoes
if (nota < 0)
  puts "Nota Invalida"
elsif (nota == 0)
  puts "SR"
elsif (nota < 3)
  puts "II"
elsif (nota < 5)
  puts "MI"
elsif (nota < 7)
  puts "MM"
elsif (nota < 9)
  puts "MS"
elsif (nota <= 10)
  puts "SS"
else
  puts "Nota Invalida"
end