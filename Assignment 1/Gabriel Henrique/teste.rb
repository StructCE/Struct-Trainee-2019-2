n = 4
stringarray = ["string1", "string2", "string3", "string4", "string5", "string6", "string7", "string8", "string9", "string10"]
stringfinais = []

i = 0
while i < n
  stringfinais.push(stringarray.sample)
  i = i + 1
end

puts stringfinais