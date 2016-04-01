File.open('rightmostchar.txt').each_line do |line|
   s = line
   s = s.chop
   s = s.split('')
   l = s.length
   t = s[l - 1]
   s = s.join
   s = s.chop.chop
   s = s.split('')

   i = 0
   n = -1
   while i < l
      if s[i] == t
         n = i
      end
      i += 1
   end
   puts n
end
