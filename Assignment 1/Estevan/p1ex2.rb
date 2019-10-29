def menc (n)
  begin
    n = Float(n)
  rescue ArgumentError
    n = -1
  end
  if n==0
    puts "SR"
  elsif n>0 and n<3
    puts "II"
  elsif n>=3 and n<5
    puts "MI"
  elsif n>=5 and n<7
    puts "MM"
  elsif n>=7 and n<9
    puts "MS"
  elsif n>=9 and n<=10
    puts "SS"
  else
    puts "Nota inválida."
  end
end

puts "Insira uma nota"

nota = gets.chomp

menc (nota)