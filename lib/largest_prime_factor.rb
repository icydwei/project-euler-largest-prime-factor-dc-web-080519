require 'pry'


def largest_prime_factor(num)
  #target num divided from it's num - 1
  #if remainder is 0, then also check that num - 1 (and shovel into array)
  #if that length is greater 1, than not prime
  count_down = num - 1
  factor_array = []

  while count_down > 0 do

    if(num % count_down == 0)

      factor_array << count_down
      prime_factor_check = []
      factor_count_down = count_down - 1
      #binding.pry
      while factor_count_down > 0 do
        if (count_down % factor_count_down == 0)
           prime_factor_check << factor_count_down
        end
        factor_count_down -= 1
      end
      #binding.pry
      if (prime_factor_check.length == 1)
        return count_down
      end
    end
    count_down -= 1
  end
  return false

end

puts largest_prime_factor(600851475143)
