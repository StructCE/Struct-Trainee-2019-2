puts "Digite algo: "
algo = gets.chomp

if algo.ascii_only?
  puts "Contem apenas ascii."
elsif
  puts "Nao contem apenas ascii."
end
