def aleatoriedade(n)
  stringarray = ["string1", "string2", "string3", "string4", "string5", "string6", "string7", "string8", "string9", "string10"]
  numerosarray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  stringfinais = []
  numerosfinais = []
  if n < 0 or n > 10
    puts "valor de n indesejavel"
  else
    for i in 0..n-1
      stringfinais.push(stringarray.sample)
      numerosfinais.push(numerosarray.sample)
    end
  end
  return stringfinais, numerosfinais
end

n = gets
puts aleatoriedade(n.to_i)