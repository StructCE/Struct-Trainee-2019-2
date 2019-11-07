def concatenar(headers, data)
    hash = Hash.new
    headers.each_with_index do |headers, index|
        hash[headers] = data[index]
    end

    hash
end

arr1 = ['a', 'b', 'c']
arr2 = ['d', 'e', 'f']

tamanho1 = arr1.length
tamanho2 = arr2.length
if tamanho1 != tamanho2
    puts("erro")
else
    a = concatenar(arr1, arr2)
    print a
    print "\n"
end


    