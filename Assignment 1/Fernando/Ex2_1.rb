# Declaracao do metodo 'eh_bis' que recebe um parametro 'ano' (pode ser com ou sem parenteses) e retorna 'true' se for bissexto e 'false' se nao for
def eh_bis (ano)
  # Logica para ver se o ano eh bissexto
  if(ano <= 0)                # Checa se o ano eh valido
    puts "Ano informado invalido"
  elsif (ano % 400 == 0)      # Checa se o ano eh divisivel por 400
    return true
  elsif (ano % 100 == 0)      # Checa se o ano eh divisivel por 100, caso nao seja por 400
    return false
  elsif (ano % 4 == 0)        # Checa se o ano eh divisiveç por 4, caso nao seja por 400 nem por 100
    return true
  else
    return false
  end
end


####################################
# Programa de fato (main) abaixo  #
##################################

# Declaracao de variaveis
ano_atual = 1901
lista_anos = []
lista_anos_bissextos = []

# Loop para todo o seculo 20
while ano_atual < 2001

  lista_anos.append ano_atual         # coloca cada ano do seculo 20 no final do array 'lista_anos'

  # Chama o metodo 'eh_bis' com o ano informado pelo usuario como argumento para checar se o ano eh bissexto ou nao
  if eh_bis (ano_atual)
    lista_anos_bissextos.append ano_atual     # coloca cada ano bissexto no final do array 'lista_anos_bissextos'
  end

  ano_atual += 1        # incrementa o ano atuaç
end

puts "Os anos bissextos do seculo 20 sao:"
puts lista_anos_bissextos       # printa na tela cada ano bissexto do seculo 20
