def fibonacci_numbers(n)
   rad_five = Math.sqrt(5)
   phi = ((1 + rad_five)/2)
   numerator = (phi**n) - ((-1)*phi)**((-1)*n)
   fib = (numerator/rad_five).round
   puts fib
end

File.open(ARGV[0]).each_line do |line|
   n = line.to_i
   fibonacci_numbers(n)
end
