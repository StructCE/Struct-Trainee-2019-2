cardapio = {
            entrada:   ['salada','arroz','azeitona'],
            principal: ['bife', 'lasanha', 'sopa'],
            sobremesa: ['sorvete', 'picole', 'bolo']
            }

def escolha (hash)
  entrada = rand(0..2)
  principal = rand(0..2)
  sobremesa = rand(0..2)

  [
   hash[:entrada][entrada],
   hash[:principal][principal],
   hash[:sobremesa][sobremesa]
  ]

end

puts (escolha cardapio)
