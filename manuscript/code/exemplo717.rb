puts "Digite uma nota de 0 a 100:"
nota = gets.chomp.to_i

case nota
when 0..20
  puts "Conceito E"
when 21..40
  puts "Conceito D"
when 41..60
  puts "Conceito C"
when 61..80
  puts "Conceito B"
when 81..100
  puts "Conceito A"
else
  puts "Digite uma nota de 0 a 100!"
end
