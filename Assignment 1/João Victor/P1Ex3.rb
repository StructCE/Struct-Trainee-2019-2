def checagem ano
    if (ano % 400 == 0)
        return "Ano bissexto"
    elsif ((ano % 4 == 0) and (ano % 100 != 0))
        return "Ano bissexto"
    else
        return "Ano nao bissexto"
    end
end

print "Informe o ano para checagem: "

ano = gets.chomp.to_i

puts checagem (ano)
  
  