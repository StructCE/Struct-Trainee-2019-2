def concatenar(hash, arr1=[], arr2=[])
  if arr1.length != arr2.length
    puts "Arrays de tamanhos diferentes"
  else
    hash = Hash[arr1.collect {|x| [x, ""]}] #Transforma as strings de arr1 em chaves no hash
    for i in 0..arr2.length
      hash[arr1[i]] = arr2[i]               #Para cada chave, uma string de arr2 eh associada
    end
    hash.delete_if {|chave, valor| valor.to_s.strip.empty?} #Deleta valores nulos do hash
    print hash
  end
end

array1 = []
array2 = []
hash = {}

puts "Digite o array1: "
for i in 1..3
array1 << gets.chomp
end
puts "Digite o array2: "
for i in 1..3
array2 << gets.chomp
end

concatenar(hash, array1, array2)

