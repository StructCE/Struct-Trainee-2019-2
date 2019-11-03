def retorna_arrays n
    cores_colecao = ["Azul", "Verde", "Amarelo", "Roxo", "Rosa", "Vermelho", "Laranja", "Marrom", "Cinza", "Branco"]
    numeros_colecao = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
    if n < 0 || n > 10
        return "O valor informado deve estar entre 0 e 10"
    else
        return cores_colecao.sample(n), numeros_colecao.sample(n)
    end
end

print "Informe o valor para N: "

n = gets.chomp.to_i

puts retorna_arrays(n)