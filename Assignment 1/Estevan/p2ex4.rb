def concatena(array1,array2)
    if array1.count > array2.count
        nula = Array.new

        for i in 1..(array1.count-array2.count)             #para cada elemento que o array1 tem a mais que o array2, tira o último elemento do array1 e armazena em outro array
            nula.insert(0,array1.pop)   
        end    

        array1 = Hash[array1.zip(array2)]                   #cria o hash com arrays de tamanho igual

        for elemento in nula                                #adiciona as chaves que sobraram do array1 com valores nil
            array1[elemento] = nil
        end

        puts array1

        elsif array1.count < array2.count
            sobras = Array.new

            for i in 1..(array2.count-array1.count)         #para cada elemento que o array2 tem a mais que o array1, tira o último elemento do array2 e armazena em outro array
                sobras.insert(0,array2.pop)
            end

            array1 = Hash[array1.zip(array2)]               #cria o hash com arrays de tamanho igual

            array1['sobras'] = sobras                       #cria uma chave 'sobras' e armazena nela todos os elementos que estavam excedentes do array2

            puts array1
        
        elsif array1.count == array2.count
        array1 = Hash[array1.zip(array2)]
        
        puts array1
    end
    
    return 0
end

array1 = []
array2 = []

entrada = ' '

puts "Digite os elementos do primeiro array. Quando terminar, aperte enter sem inserir nenhum valor."

while entrada != ''
    entrada = gets.chomp
    array1.push entrada
end

array1.pop                                                  #remove o nil do último enter

entrada = ' '

puts "Digite os elementos do segundo array. Quando terminar, aperte enter sem inserir nenhum valor."

while entrada != ''
    entrada = gets.chomp
    array2.push entrada
end

array2.pop                                                  #remove o nil do último enter

concatena(array1,array2)