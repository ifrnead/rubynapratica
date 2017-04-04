condicao = false
until condicao
  puts "Digite um número múltiplo de 5: "
  numero = gets.chomp.to_i
  if numero % 5 == 0
    condicao = true
  end
end
puts "#{numero} é múltiplo de 5!"
