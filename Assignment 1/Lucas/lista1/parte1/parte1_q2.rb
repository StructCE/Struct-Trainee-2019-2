

def mencao(nota)
    if(nota == 0)
        puts("SR\n")
    end

    if(nota < 0)
        puts("mencao invalisa\n")
    end
    
    if(nota > 0 && nota < 3)
        puts("II\n")
    end

    if(nota >= 3 && nota < 5)
        puts("MI\n")
    end

    if(nota >= 5 && nota < 7)
        puts("MM\n")
    end

    if(nota >= 7 && nota < 9)
        puts("MS\n")
    end

    if(nota >= 9 && nota <= 10)
        puts("SS\n")
    end
end

nota  = gets.chomp.to_f

mencao(nota)
 


