def bissexto(ano)
    if(ano % 400 == 0)
        puts("bissexto")
    elsif(ano % 4 == 0 && ano % 100 != 0)
        puts("bissexto")
    else
        puts("nao bissexto")
    end
end

ano = gets.chomp.to_i

bissexto(ano)
