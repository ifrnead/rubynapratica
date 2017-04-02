puts "Digite um número: "
numero = gets.chomp.to_i

for i in 1..10
  puts "#{numero} x #{i} = #{numero * i}"
end
