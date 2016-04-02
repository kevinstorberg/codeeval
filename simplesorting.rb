File.open('simplesorting.txt').each_line do |line|
   set = line.scan(/\S+/)
   neg, pos = [], []
   set.each do |n|
      n = n.to_f
      if n <= 0
         neg << n
      else
         pos << n
      end
   end
   neg, pos = neg.sort.map{|n|sprintf "%.3f", n}, pos.sort.map{|n|sprintf "%.3f", n}
   set, write = neg + pos, ''
   set.each do |n|
      write = write + n.to_s + ' '
   end
   write = write.chop
   puts write
end
