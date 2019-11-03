# Declaracao do metodo 'eh_bis' que recebe um parametro 'ano' (pode ser com ou sem parenteses) e printa se eh bissexto ou nao
def eh_bis (ano)
  # Logica para ver se o ano eh bissexto
  if(ano <= 0)                # Checa se o ano eh valido
    puts "Ano informado invalido"
  elsif (ano % 400 == 0)      # Checa se o ano eh divisivel por 400
    puts "Eh bissexto"
  elsif (ano % 100 == 0)      # Checa se o ano eh divisivel por 100, caso nao seja por 400
    puts "Nao eh bissexto"
  elsif (ano % 4 == 0)        # Checa se o ano eh divisiveç por 4, caso nao seja por 400 nem por 100
    puts "Eh bissexto"
  else                        # Caso em que o ano nao eh divisivel por 400, por  100 ou por 4
    puts "Nao eh bissexto"
  end
end


####################################
# Programa de fato (main) abaixo  #
##################################

# Mensagem para o usuario
print "Por favor, informe o ano desejado: "

# Recebe input do usuario (gets) sem quebra de linha (chomp) e no formato de inteiro (to_i)
ano_inserido = gets.chomp.to_i

# Chama o metodo 'eh_bis' passando o ano recebido pelo usuario como argumento (pode ser passado com ou sem parenteses)
eh_bis (ano_inserido)

