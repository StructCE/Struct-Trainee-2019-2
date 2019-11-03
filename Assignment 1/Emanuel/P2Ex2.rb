def selecionaPrato(menu, prato)
	prato.push(menu[:entrada].sample)
	prato.push(menu[:principal].sample)
	prato.push(menu[:sobremesa].sample)
end

menu = {
	:entrada => ['salada', 'fritas', 'torrada'],
	:principal => ['carne de sol', 'strogonoff', 'bacalhau'],
	:sobremesa => ['petit gateu', 'sorvete', 'doce de banana']
}

prato = []

selecionaPrato(menu, prato)

print prato
puts ''
