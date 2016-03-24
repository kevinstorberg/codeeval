
   def old_school_roman_numeral number
      numerals = [[1, "I"], [5, "V"], [10, "X"], [50, "L"], [100, "C"], [500, "D"], [1000, "M"]]
      index = numerals.length - 1
      output = ""
      while index >= 0
         remainder = number % numerals[index][0]
         multiple = number - remainder
         output = output + numerals[index][1]*(multiple / numerals[index][0]) if multiple > 0
         number = remainder
         index = index - 1
      end
      return output
   end

   def roman_numeral number
      numerals = [[1, "I"], [5, "V"], [10, "X"], [50, "L"], [100, "C"], [500, "D"], [1000, "M"]]
      number = old_school_roman_numeral number
      number = number.gsub(/DCCCC{1}/, 'CM')
      number = number.gsub(/LXXXX{1}/, 'XC')
      number = number.gsub(/VIIII{1}/, 'IX')
      number = number.gsub(/C{4}/, 'CD')
      number = number.gsub(/X{4}/, 'XL')
      number = number.gsub(/I{4}/, 'IV')
      return number
   end

File.open('romannumeral.txt').each_line do |line|
   number = line.to_i
   puts roman_numeral number
end
