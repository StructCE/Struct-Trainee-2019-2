def sorteia
    cardapio = {entrada: ['Pão','Salada','Sopa', 'Batata frita'], prato: ['espaguete ao molho de tomate', 'quiche de abóbora','torta de espinafre', 'pizza marguerita', 'lentilhada'], sobremesa: ['brownie','sorvete','bolo']}

    return cardapio[:entrada][rand(0..3)] + ', ' + cardapio[:prato][rand(0..4)] + ' e ' +cardapio[:sobremesa][rand(0..2)] + '.'
end


puts sorteia