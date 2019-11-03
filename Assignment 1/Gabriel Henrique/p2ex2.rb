cardapio = {entrada: ['Caldo', 'Torrada', 'Petiscos'], principal: ['Parmegiana', 'Strogonoff', 'Bife Acebolado'], sobremesa: ['Petit Gateu', 'Sorvete', 'Brigadeiro']}

entrada = cardapio[:entrada].sample
principal = cardapio[:principal].sample
sobremesa = cardapio[:sobremesa].sample

escolhas = ["entrada é #{entrada}", "prato principal é #{principal}", "sobremesa é #{sobremesa}"]
puts escolhas