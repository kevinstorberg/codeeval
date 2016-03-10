def fizz_buzz(x, y, n)
   for i in 1..n
      if i % x == 0 and i % y != 0
         print "F"
      elsif i % x != 0 and i % y == 0
         print "B"
      elsif i % x == 0 and i % y == 0
         print "FB"
      else
         print i
      end

      if i != n
         print " "
      end
   end
   puts
end

File.open(ARGV[0]).each_line do |line|
   ranges = line.gsub(/\s+/, ' ').strip.split(" ")
   x = ranges[0].to_i
   y = ranges[1].to_i
   n = ranges[2].to_i
   fizz_buzz(x,y,n)
end
