def checagem nota
    if (nota == 0)
        return "SR"
    elsif (nota > 0 and nota < 3)
        return "II"
    elsif (nota >= 3 and nota < 5)
        return "MI"
    elsif (nota >= 5 and nota < 7)
        return "MM"
    elsif (nota >= 7 and nota < 9)
        return "MS"
    elsif (nota >= 9 and nota <= 10)
        return "SS"
    else
        return "Nota Invalida"
    end
end

print "Informe a nota do aluno para checagem de menção: "

nota = gets.chomp.to_f

puts checagem(nota)
