def funcao(n)
    numeros =  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    strings = ["aa", "bb", "cc", "dd", "ee", "ff", "gg", "hh", "ii", "jj"]
    arr1 = Array.new
    arr2 = Array.new
    j = 0

    hash = Hash.new
    numeros.each_with_index do |numeros, index| #concatenação dos vetores para um hash
        hash[numeros] = strings[index]
    end

   while n > 0
        a = rand(9)
        arr1[j] = hash[a]
        arr2[j] = numeros[a] 
        n += -1
        j += 1
   end

   return arr1, arr2
end

n = gets.chomp.to_i

str, num = funcao(n)

print str
print "\n"
print num
print "\n"





