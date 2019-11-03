# Declaracao dos arrays de teste
array1 = [1, 2, 3, 4, 5]
array2 = ["um", "dois", "tres", "quatro", "cinco"]
array3 = [6, 7, 8, 9, 10, 11, 12, 13]

# Definicao do metodo que concatena os arrays em um hash
def concatena (input_array1, input_array2)
  hash = Hash.new       # cria um novo hash

  if(input_array1.size > input_array2.size)
    puts "Caso array de chaves maior!"

    # Logica para colocar os primeiros valores do array de dados
    for elemento in (0..input_array2.size-1)
      hash[input_array1[elemento]] = input_array2[elemento]
    end

    # Logica para colocar strings nulas como valores no restante das chaves
    for elemento in (input_array2.size..input_array1.size-1)
      hash[input_array1[elemento]] = ""
    end

    return hash

  elsif(input_array1.size == input_array2.size)
    puts "Caso array de chaves e dados de mesmo tamanho!"

    for elemento in (0..input_array1.size-1)
      hash[input_array1[elemento]] = input_array2[elemento]     # coloca cada elemento de array1 como key e cada elemento de array2 como value
    end

    return hash                   # retorna a hash

  else
    puts "Caso array de dados maior!"
    array_sobras = []

    for elemento in (input_array1.size..input_array2.size-1)
      array_sobras.append(input_array2[elemento])
    end

    hash[input_array1] = array_sobras

    return hash

  end
end



####################################
# Programa de fato (main) abaixo  #
##################################

puts "array1: " + array1.to_s
puts "array2: " + array2.to_s
puts "array3: " + array3.to_s
puts
puts "Concatena array3 e array2"
puts concatena(array3, array2)
puts
puts "Concatena array1 e array2"
puts concatena(array1, array2)
puts
puts "Concatena array2 e array1"
puts concatena(array2, array1)
puts
puts "Concatena array2 e array3"
puts concatena(array2, array3)
