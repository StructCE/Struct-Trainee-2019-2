def concatena(a,b)
    if a.count == b.count               #verifica o tamanho dos arrays
    puts Hash[a.zip(b)]                 #cria um hash pegando as chaves do array "a" e os valores do array "b"
    else 
        puts "Erro: os arrays têm tamanhos diferentes."
    end
    return 0;
end

array1 = []
array2 = []

entrada = ' '                           #define um valor pra entrada para impedir problemas na "entrada" do while

puts "Digite os elementos do primeiro array. Quando terminar, aperte enter sem inserir nenhum valor."

while entrada != ''
    entrada = gets.chomp
    array1.push entrada
end

array1.pop                              #remove o nil inserido com o último enter

entrada = ' '

puts "Digite os elementos do segundo array. Quando terminar, aperte enter sem inserir nenhum valor. Lembre-se que os arrays devem ter o mesmo número de elementos. O primeiro array tem #{array1.count} elementos."

while entrada != ''
    entrada = gets.chomp
    array2.push entrada
end

array2.pop                              #remove o nil inserido com o último enter

concatena(array1,array2)