def checagem string
    if (string.ascii_only?)
        return "A string informada contem apenas caracteres ASCII"
    else
        return "A string informada nao contem apenas caracteres ASCII"
    end
end

print "Informe a string para checagem: " # Print nao quebra linha, diferentemente do puts

string = gets.chomp # Sem quebra de linha

puts checagem(string)
