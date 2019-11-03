def arrays(n,strings,numeros)
	array = ['abc', 'cde', 'fgh', 'ijk', 'lmn', 'opq', 'rst', 'uvw', 'xyz', '.,-']
	for i in 0..n-1
		strings.push(array.sample)
		array.delete(strings[i])
		numeros.push(rand(0..10))
	end
end

n = gets.to_i
strings = []
numeros = []

arrays(n,strings,numeros)

print strings
puts ''
print numeros
puts ''