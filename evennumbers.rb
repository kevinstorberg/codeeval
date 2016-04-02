File.open('evennumbers.txt').each_line do |line|
   line = line.to_i
   if line % 2 == 0
      puts 1
   else
      puts 0
   end
end
