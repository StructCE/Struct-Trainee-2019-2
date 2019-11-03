ano = gets.chomp.to_i

if ano % 400 == 0
    bissexto = true
elsif ano % 100 == 0
    bissexto = false
elsif ano % 4 == 0
    bissexto = true
else
    bissexto = false
end

if bissexto == true
    puts "%d é um ano bissexto" % [ano]
else
    puts "%d não é um ano bissexto" % [ano]
end