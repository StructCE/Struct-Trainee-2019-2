def bissexto?(ano)
    if ano % 400 == 0
        bissexto = true
    elsif ano % 100 == 0
        bissexto = false
    elsif ano % 4 == 0
        bissexto = true
    else
        bissexto = false
    end
end

anos = []
anosBi = []

for ano in 1901..2000
    anos.push(ano)
    if bissexto?(ano)
        anosBi.push(ano)
    end
end