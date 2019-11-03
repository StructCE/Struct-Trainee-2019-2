def concatena(array1, array2)
  if array1.length > array2.length
    sobras = []
    i = 0
    hash = Hash.new
    array1.each_with_index do |a|
      if i < array2.length
      hash[a] = array2[i]
      i += 1
      end
    end
    while i < array1.length
    sobras.push(array1[i])
      i += 1
    end
    print"SOBRAS: #{sobras}\n"

  elsif array2.length > array1.length
    sobras = []
    i = 0
    hash = Hash.new
    array1.each_with_index do |a|
      if i < array1.length
        hash[a] = array2[i]
        i += 1
      end
    end
    #hash[a] = array1[i]
    j = i + 1
    while j < array2.length
      sobras.push(array2[j])
      j += 1
    end
    j = 0
    array2.each_with_index do |a|
      if j == array1.length
        hash[a] = sobras
      end
      j += 1
    end

  else
    hash = Hash.new
    array1.each_with_index { |key, value| hash[key] = array2[value] }
  end
  hash
end
puts "ARRAYS DE TAMANHOS IGUAIS"
a1 = ["key1", "key2", "key3"]
a2 = ["value1", "value2", "value3"]
puts concatena(a1,a2)
puts
print "ARRAY DE KEYS MAIOR\n"
a1 = ["cachorro", "gato", "anta", "burro", "cavalo", "shrek"]
a2 = ["auau", "miau", "vo zua os caloro"]
puts concatena(a1, a2)
puts
puts "ARRAY DE DADOS MAIOR\n"
a1 = ["key1", "key2"]
a2 = ["value1", "value2", "value3", "value4", "value5"]
puts concatena(a1, a2)
