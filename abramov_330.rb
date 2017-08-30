def get_perfects_num(n) # Get All perfect numbers < n
  numbers = (1..n).to_a # Convert range to array
  arr = numbers.map do |number| # Create result array witch contains sum divedes
    a = (1..number).select { |k| (number % k).zero? && k != number }
    a.inject(0) { |sum, x| sum + x }
  end
  result = []
  arr.each_with_index do |_, i|
    if numbers[i] == arr[i] then result << arr[i] end # Compare to value range 
  end
  result # Convert array to string
end

n = gets.to_i
get_perfects_num(n)
