def devolveArrays (numero)
  numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  strings = ["Alto","Baixo","Certo","Dianteiro","Errado","Fundo","Gigante","Hora","Indigente","Jogo"]
  arr1 = []
  arr2 = []

  while numero != 0
    x = rand(0..9)
    y = rand(0..9)
  
    arr1 << numeros[x]
    arr2 << strings[y]    

    numero -= 1
  end
  puts ""
  puts arr1.to_s
  puts ""
  puts arr2.to_s
  puts ""

end

puts "Digite o tanto de strings e numeros a serem retornadas: "
n = gets.to_i

devolveArrays(n)
