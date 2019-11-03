def concatena chave, chave_count, dados, dados_count
    if chave_count == dados_count
        return Hash[chave.zip dados]
    else 
        return "Erro: O metodo nao pode ser executado pois os arrays possuem tamanhos diferentes"
    end
end

chave = []
chave_count = 0
dados = []
dados_count = 0

puts "Informe os elementos para o array que definira a chave. Apos inserir cada elemento, digite enter. Ao finalizar, digite enter novamente"

while true
    input = gets.chomp
    break if input.empty?
    chave.append input
    chave_count += 1
end

puts "Informe os elementos para o array que definira os dados. Apos inserir cada elemento, digite enter. Ao finalizar, digite enter novamente"

while true
    input = gets.chomp
    break if input.empty?
    dados.append input
    dados_count += 1
end

puts concatena(chave, chave_count, dados, dados_count)