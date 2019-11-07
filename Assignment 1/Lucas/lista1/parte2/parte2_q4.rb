def concatenar(headers, data)
    hash = Hash.new
    headers.each_with_index do |headers, index|
        hash[headers] = data[index]
    end

    hash
end

chaves = ['a', 'b', 'c', 'l', 'k']
dados = ['d', 'e', 'f']

string = String.new
tamanho1 = chaves.length
tamanho2 = dados.length
if tamanho1 > tamanho2
    i = tamanho2
    while i < tamanho1
        string << chaves[i]
        i += 1
    end
    a = concatenar(chaves, dados)
    print a
    print "\n"
    print string
    print "\n"
elsif tamanho2 > tamanho1
    i = tamanho1
    j = 0
    array  = Array.new(tamanho2 - tamanho1)
    while i < tamanho2
        array[j] = dados[i]
        j += 1
        i += 1
    end
    dados[0] = array
    a = concatenar(chaves, dados)
    print a
    print "\n"
    print array
    print "\n"
else
    a = concatenar(chaves, dados)
    print a
    print "\n"
end


    