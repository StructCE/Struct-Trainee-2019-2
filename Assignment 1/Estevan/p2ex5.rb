def arrays(n)
    strings = ["abacate", "banana", "teclado", "monitor", "trainee", "fone", "livro", "nintendo_3ds", "controle_de_playstation", "#TeamPedro"] #evitei espaços pra facilitar identificar que é uma string só

    if n>0 && n<10
        for i in 1..n
            resultado_s = resultado_s.to_s + strings[rand(0..9)].to_s + " "                 #constrói uma string com palavras sorteadas
            resultado_i = resultado_i.to_s + rand(0..10).to_s + " "                         #constrói uma string com números sorteados de 0 a 10
        end

        resultado = resultado_s + "\n" + resultado_i
        
    else
        resultado = "Erro!\n"
    end

    return resultado

end

puts "Digite o número de palavras e de números aleatórios a serem gerados:"

num = gets.chomp.to_i

puts arrays(num)