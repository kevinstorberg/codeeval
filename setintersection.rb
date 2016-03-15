File.open(ARGV[0]).each_line do |line|
   set_both = line.split(";")
   set_one = set_both[0].scan(/\d+/)
   set_two = set_both[1].scan(/\d+/)
   i = 0
   while i < set_one.length
      j = 0
      while j < set_two.length
         if set_one[i] == set_two[j]
            if j != 0
               print ","
            end
            print set_one[i]
            j = j + 1
            i = i + 1
         else
            j = j + 1
         end
      end
      i = i + 1
   end
   puts
end
