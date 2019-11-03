# Definicao da funcao que retorna dois arrays
def retorna_dois (n)
  if(0 > n or n > 10)
    return "Numero invalido! N precisa estar entre 0 e 10"
  else
    # Declaracao dos arrays
    array_num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    array_string = ["um", "dois", "tres", "quatro", "cinco", "seis", "sete", "oito", "nove", "dez"]
    array1 = []
    array2 = []

    for elemento in (1..n)
      array1[elemento-1] = array_num[rand(10)]       # Escolhe um numero aleatoriamente entre 0 e 10
      array2[elemento-1] = array_string[rand(10)]    # Escolhe uma string aleatoriamente entre as 10 strings
    end

      return array1, array2           # Retorna os dois arrays
  end
end



####################################
# Programa de fato (main) abaixo  #
##################################

puts retorna_dois(3)