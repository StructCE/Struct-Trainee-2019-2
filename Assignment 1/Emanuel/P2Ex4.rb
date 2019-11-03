def formHash(keys, data)
	hashArrays = {}
	if keys.length > data.length
		for i in 0..data.length-1
			hashArrays[keys[i]] = data[i]
		end
		for i in data.length..keys.length-1
			hashArrays[keys[i]] = ''
		end
	elsif keys.length < data.length
		for i in 0..keys.length-1
			hashArrays[keys[i]] = data[i]
		end
		hashArrays[:sobras] = []
		for i in keys.length..data.length-1
			hashArrays[:sobras].push(data[i])
		end
	else
		for i in 0..keys.length-1
			hashArrays[keys[i]] = data[i]
		end
	end
	return hashArrays
end

keys = [:nome, :telefone, :idade, :cpf]
data = ['andre', '98765-4321', 25, '123.456.789-00']
hashArrays = {}

hashArrays = formHash(keys, data)

puts hashArrays