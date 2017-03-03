puts "Digite uma nota de 0 a 100:"
nota = gets.chomp.to_i

if nota < 0 or nota > 100
  puts "Nota inválida! Digite uma nota entre 0 e 100!"
else
  if nota <= 20
    puts "Conceito E"
  else
    if nota <= 40
      puts "Conceito D"
    else
      if nota <= 60
        puts "Conceito C"
      else
        if nota <= 80
          puts "Conceito B"
        else
          puts "Conceito A"
        end
      end
    end
  end
end
