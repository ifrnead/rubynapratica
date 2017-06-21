for i in 1..10
  puts "i = #{i}"
  for j in 1..10
    puts "j = #{j}"
    if j > 5
      break
    end
  end
end
