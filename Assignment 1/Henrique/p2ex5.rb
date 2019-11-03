def retornaDados( n, strings, numeros )
    if n > 10
        exit()
    end
    i=0
    for i in 0..n-1 do
        j = rand(0..n-1)
        k = rand(0..n-1)
        puts strings[j]
        puts numeros[k]
    end
end

array_strings = ['struct', 'foguetinho', 'trainee', 'to', 'cansado', 'demais', 'vou', 'trancar', 'meu', 'curso']
array_numeros = ['1', '3', '5', '7', '11', '13', '17', '19', '23', '29']

N = rand(10)

retornaDados(N, array_strings, array_numeros)