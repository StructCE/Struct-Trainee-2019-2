def formHash(keys, data)
	hashArrays = {}
	if keys.length != data.length
		puts 'tamanho invalido.'
	else
		for i in 0..keys.length-1
			hashArrays[keys[i]] = data[i]
		end
	end
	return hashArrays
end

keys = ['nome', 'telefone', 'idade', 'cpf']
data = ['andre', '98765-4321', 25, '123.456.789-00']
hashArrays = {}

hashArrays = formHash(keys, data)

puts hashArrays