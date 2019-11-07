# Declaracao do metodo 'escolha' que faz a escolha do menu aleatoria
def escolha (hash)
  entrada = rand(0..2)      # Pega aleatoriamente um dos 'values' da 'key' 'entrada'
  principal = rand(0..2)    # Pega aleatoriamente um dos 'values' da 'key' 'principal'
  sobremesa = rand(0..2)    # Pega aleatoriamente um dos 'values' da 'key' 'sobremesa'

  # retorna um array contendo as 3 strings escolhidas aleatoriamente
  [ hash[:entrada][entrada], hash[:principal][principal], hash[:sobremesa][sobremesa] ]
end


####################################
# Programa de fato (main) abaixo  #
##################################

# Declaracao do hash do menu no formato 'key: [value_0, value_1, value_2]'
menu_hash = {entrada: ['salada', 'sopa', 'caldo' ], principal: ['arroz', 'carne', 'frango'], sobremesa: ['brigadeiro', 'beijinho', 'sorvete']}

puts "A escolha aleatoria do pedido foi:"

# Chama o metodo 'escolha' passando 'menu_hash' como argmuento e printa o retorno do metodo na tela
puts (escolha menu_hash)