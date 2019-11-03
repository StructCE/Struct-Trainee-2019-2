def concatenar(hash, arr1=[], arr2=[])

  if arr1.length > arr2.length                # Array de chaves > Array de valores
    hash = Hash[arr1.collect {|x| [x, ""]}]
    for i in 0..arr1.length-1
      hash[arr1[i]] = arr2[i]
    end
    puts "\nArray de chaves > Array de valores"
    print hash
    print "\n\n"

  elsif arr1.length < arr2.length            # Array de chaves < Array de valores
    arr1 << arr2.shift
    hash = Hash[arr1.collect {|x| [x, ""]}]
    for i in 0..(arr1.length-2)
      hash[arr1[i]] = arr2.shift
    end
    hash[arr1[arr1.length-1]] = arr2
    hash.delete_if {|chave, valor| valor.to_s.strip.empty?}
    puts "\nArray de chaves < Array de valores"
    print hash
    print "\n\n"

  else
    hash = Hash[arr1.collect {|x| [x, ""]}] # Transforma as strings de arr1 em chaves no hash
    for i in 0..arr2.length
      hash[arr1[i]] = arr2[i]               # Para cada chave, uma string de arr2 eh associada
    end
    hash.delete_if {|chave, valor| valor.to_s.strip.empty?} # Deleta valores nulos do hash
    puts "\nArray de chaves == Array de valores"
    print hash
    print "\n\n"
  end

end

array1 = []
array2 = []
hash = {}

puts "\nDigite o array1: "
for i in 1..rand(1..5)            # Tamanhos aleatórios de Chaves e Valores para verificar
array1 << gets.chomp              # as exceções
end
puts "\nDigite o array2: "
for i in 1..rand(1..5)
array2 << gets.chomp
end

concatenar(hash, array1, array2)
