# Mensagem para o usuario
print "Por favor, informe a string a ser avaliada: "

# Recebendo uma string de input do usuario (gets) sem a quebra de linha (chomp)
entrada = gets.chomp

# Checa se a string de entrada possui apenas caracteres ascii
if (entrada.ascii_only?)
    puts "A string informada contem apenas ascii"
else
    puts "A string informada nao contem apenas caracteres acii"
end
