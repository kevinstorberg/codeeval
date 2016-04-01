def odd_numbers(n)
   i = 1
   while i <= n
      if (i % 2) == 0
         i = i + 1
      else
         puts i
         i = i + 1
      end
   end
end

odd_numbers(99)
