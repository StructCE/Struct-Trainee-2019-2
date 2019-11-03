menu = {
    :entrada => ['salada', 'amendoim', 'isca de peixe'],
    :principal => ['strogonoff', 'risoto', 'picanha', 'spaghetti'],
    :sobremesa => ['pudim', 'bolo', 'sorvete', 'petit gateau', 'abacaxi caramelizado']
}

def aleatorio(menu)
    entrada = rand(0..2)
    principal = rand(0..2)
    sobremesa = rand(0..2)
    [menu[:entrada][entrada], menu[:principal][principal], menu[:sobremesa][sobremesa]]
end

puts (aleatorio(menu))