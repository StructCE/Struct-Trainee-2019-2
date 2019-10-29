def verifica (arr)
    if arr.ascii_only?
        return "A entrada contém apenas caracteres ascii."
    else
        return "A entrada contém pelo menos um caracter que não é ascii."
    end

end

    puts "Insira um conjunto de caracteres para serem verificados:"

    arr=gets.chomp

    puts verifica(arr)
