expressao = gets.chomp

if(expressao.ascii_only?)
    puts("todos ascii\n")
else
    puts("nem todos sao ascii\n")
end