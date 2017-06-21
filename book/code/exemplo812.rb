puts "Digite um número: "
numero = gets.chomp.to_i

11.times { |i|
  puts "#{numero} x #{i} = #{numero * i}"
}
