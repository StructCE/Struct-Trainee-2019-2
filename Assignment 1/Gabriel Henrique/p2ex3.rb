def concatena(array1, array2)
  if array1.length != array2.length
    puts "Erro: arrays com tamanhos diferentes"
  else
    hash = Hash.new
    array1.each_with_index { |key, value| hash[key] = array2[value] }
  end
  hash
end
a1 = ["cachorro", "gato", "anta"]
a2 = ["auau", "miau", "vo zua os caloro"]

puts concatena(a1, a2)