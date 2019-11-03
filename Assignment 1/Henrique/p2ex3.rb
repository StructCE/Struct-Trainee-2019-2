def concatenar(conteudo, dados)
    hash = Hash.new
    conteudo.each_with_index do |conteudo, index|
        hash[conteudo] = dados[index]
    end
    hash
end

primeiro_array = ['1', '2','3', '4', '5']
segundo_array = ['Henrique', 'Pedro', 'Joao', 'Bruno', 'Clovis']

tamanho_primeiro_array = primeiro_array.length
tamanho_segundo_array = segundo_array.length

if tamanho_primeiro_array != tamanho_segundo_array
    puts "Arrays de tamanhos distintos"
else
    novo = concatenar(primeiro_array, segundo_array)
    print novo
end 