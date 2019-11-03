def checagem ano
    if (ano % 400 == 0)
        return true
    elsif ((ano % 4 == 0) and (ano % 100 != 0))
        return true
    else
        return false
    end
end

anos = []
anos_bissextos = []

for ano in 1901..2000
    anos.append ano

    if checagem (ano)
        anos_bissextos.append ano
    end
end

puts anos_bissextos
  
  