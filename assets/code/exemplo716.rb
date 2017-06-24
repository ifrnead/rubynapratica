puts "Digite o mês do ano:"
mes = gets.chomp.to_i

case mes
when 1
  puts "Janeiro tem 31 dias"
when 2
  puts "Fevereiro tem 28 dias"
when 3
  puts "Março tem 31 dias"
when 4
  puts "Abril tem 30 dias"
when 5
  puts "Maio tem 31 dias"
when 6
  puts "Junho tem 30 dias"
when 7
  puts "Julho tem 31 dias"
when 8
  puts "Agosto tem 30 dias"
when 9
  puts "Setembro tem 31 dias"
when 10
  puts "Outubro tem 30 dias"
when 11
  puts "Novembro tem 31 dias"
when 12
  puts "Dezembro tem 30 dias"
else
  puts "Digite um número entre 1 e 12!"
end
