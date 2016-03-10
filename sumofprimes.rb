require 'prime'
def array_of_primes(n)
   primes_array = Array.new
   i = 1
   until primes_array.length == n
      if i.prime? == true
         primes_array << i
      end
      i = i + 1
   end
   return primes_array
end

def sum_of_primes(n)
   sum = 0
   array_of_primes(n).each {|i| sum = sum + i}
   puts sum
end

sum_of_primes(1000)
