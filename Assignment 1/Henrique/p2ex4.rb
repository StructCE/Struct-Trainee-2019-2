def concatenar(conteudo, dados)
    hash = Hash.new
    conteudo.each_with_index do |conteudo, index|
        hash[conteudo] = dados[index]
    end
    hash
end

chaves_array = ['1', '2','3', '4', '5']
dados_array = ['Henrique', 'Pedro', 'Joao', 'Bruno', 'Clovis', 'Rafael', 'Victor']

tamanho_chaves_array = chaves_array.length
tamanho_dados_array = dados_array.length

string_vazia = String.new

if tamanho_chaves_array > tamanho_dados_array
    for i in tamanho_dados_array..tamanho_chaves_array-1 do
        string_vazia << chaves_array[i]
        i += 1
    end
    novo = concatenar(chaves_array, dados_array)
    puts novo
elsif tamanho_dados_array > tamanho_chaves_array
    excedente = Array.new(tamanho_dados_array - tamanho_chaves_array)
    j=0
    for i in tamanho_chaves_array..tamanho_dados_array-1 do
        excedente[j] = dados_array[i]
        j += 1
    end
    dados_array[0] = excedente
    novo = concatenar(chaves_array, dados_array)
    puts novo
else
    novo = concatenar(chaves_array, dados_array)
    puts novo
end