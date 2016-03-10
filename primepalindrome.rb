require 'prime'
def palindrome_primes(n)
   for i in 1..n
      if i == i.to_s.reverse.to_i and i.prime? == true
         largest_palindrome_prime = i
      end
   end
   print largest_palindrome_prime
end

palindrome_primes(999)
