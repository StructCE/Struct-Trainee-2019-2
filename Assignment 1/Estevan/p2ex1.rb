def bissexto (a)
    if a%400==0
      return true
    elsif a%100==0
      return false
    elsif a%4==0
      return true
    else
      return false
    end
  end

  anos = []
  anos_bis = []

  puts "Array dos anos bissextos:\n"

for num in 1901..2000 #joga o ano na função bissexto e põe no array dos bissextos aqueles que se encaixam nos critérios
    if bissexto(num) == true
        anos_bis.push num
    end
    anos.push num
end

puts anos_bis