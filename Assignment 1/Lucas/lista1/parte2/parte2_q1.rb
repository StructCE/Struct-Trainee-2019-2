def bissexto(ano, bis, nbis)
    if(ano % 400 == 0)
        bis.push(ano)
    elsif(ano % 4 == 0 && ano % 100 != 0)
        bis.push(ano)
    else
        nbis.push(ano)
    end
end

ano = 1901
bis = Array.new
nbis = Array.new

while ano < 2001
    bissexto(ano, bis, nbis)
    ano += 1
end
puts("BISSEXTO")
print bis
print "\n"
puts("NAO BISSEXTO")
print nbis
print "\n"



