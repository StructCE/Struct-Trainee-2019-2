cardapio = {entrada: ['Salada', 'Sopa', 'Caldo'], principal: ['Arroz', 'Carne', 'Frango'], sobremesa: ['Brigadeiro', 'Beijinho', 'Sorvete']}

def escolha cardapio
    entrada = rand(0..2)
    principal = rand(0..2)
    sobremesa = rand(0..2)

    prato = [cardapio[:entrada][entrada], cardapio[:principal][principal], cardapio[:sobremesa][sobremesa]]

    return prato # Especifica o que sera retornado
end

puts escolha cardapio