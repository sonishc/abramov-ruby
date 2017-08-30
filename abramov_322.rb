#################################################
# Returns a MAX SUM DIVIDES numbers within all natural
# numbers of range (1..to user_Number) 
# As example n_1 = 36 (1+2+3+4+6+9+12+18) = 55
#            n_2 = 5  (1) = 1
# max = 55
#################################################

puts 'Write last number of range'

n = gets.to_i           # Get user data
numbers = (1..n).to_a   # Convert range to array

arr = numbers.map do |number| # Create result array witch contains sum divedes
  a = (1..number).select { |value| (number % value).zero? && value != number }
  a.inject(0) { |sum, x| sum + x }
end

arr.inject { |m, x| m > x ? m : x } # Get max element in result array
