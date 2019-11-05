require 'pry'

def is_prime?(n)
  tests = Array (2..Math.sqrt(n).floor)
  tests = tests.select { |x| n % x == 0}
  return true if tests.empty?
  false
end

def largest_prime_factor(n)
 test = 3
 out = 0
 while test <= Math.sqrt(n).floor
    #Math Principle: If 𝑛 is not prime then 𝑛 has a prime factor 𝑝 with 𝑝≤squareroot of n.
    if ((n % test == 0) && is_prime?(test))
     out = test
    end
     test+=1
  end
 if out == 0
   return n
 else
   return out
 end
end

puts largest_prime_factor(600851475143)




# def largest_prime_factor(num)
#   #target num divided from it's num - 1
#   #if remainder is 0, then also check that num - 1 (and shovel into array)
#   #if that length is greater 1, than not prime
#   count_down = num - 1
#   factor_array = []
#
#   while count_down > 0 do
#
#     if(num % count_down == 0)
#
#       factor_array << count_down
#       prime_factor_check = []
#       factor_count_down = count_down - 1
#       #binding.pry
#       while factor_count_down > 0 do
#         if (count_down % factor_count_down == 0)
#            prime_factor_check << factor_count_down
#         end
#         factor_count_down -= 1
#       end
#       #binding.pry
#       if (prime_factor_check.length == 1)
#         return count_down
#       end
#     end
#     count_down -= 1
#   end
#   return false
#
# end
#
