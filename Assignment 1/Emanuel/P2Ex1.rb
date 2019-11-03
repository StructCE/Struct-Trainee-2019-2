def bissexto?(ano)
	if ano%400 == 0
		return true
	elsif ano%100 == 0
		return false
	elsif ano%4 == 0
		return true
	else
		return false
	end
end

anos = []

for ano in 1901..2000
	if bissexto?(ano)
		anos.push(ano)
	end
end

print anos
puts ''