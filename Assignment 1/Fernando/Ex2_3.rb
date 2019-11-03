# Declaracao dos arrays de teste
array1 = [1, 2, 3, 4, 5]
array2 = ["um", "dois", "tres", "quatro", "cinco"]
array3 = [1, 2, 3, 4, 5, 6]

# Definicao do metodo que concatena os arrays em um hash
def concatena (input_array1, input_array2)
  if(input_array1.size != input_array2.size)
    return "Erro! Arrays de tamanhos diferentes. Impossivel concatenar em um hash"
  else
    hash = Hash.new       # cria um novo hash

    for elemento in (0..input_array1.size-1)
      hash[input_array1[elemento]] = input_array2[elemento]     # coloca cada elemento de array1 como key e cada elemento de array2 como value
    end
    return hash                   # retorna a hash
  end
end



####################################
# Programa de fato (main) abaixo  #
##################################

puts "array1: " + array1.to_s
puts "array2: " + array2.to_s
puts "array3: " + array3.to_s
puts

puts "Concatena array1 e array2"
puts concatena(array1, array2)
puts
puts "Concatena array1 e array3"
puts concatena(array1, array3)