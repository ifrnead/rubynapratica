begin
  puts "Digite um número par: "
  numero = gets.chomp.to_i
end until numero % 2 == 0

puts "#{numero} é par!"
