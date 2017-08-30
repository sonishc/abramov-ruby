def occurrence_number(n, number_three) # Finding number 3 in n^2  
    num = (n**2).to_s              # Convert to String
    n = (n**2).to_s.split("")      # Divide string to array
    p number_three
    n = n.select { |i| i == number_three }  # Select number_three in n - array

    if n.empty?
        puts num + " - This sequense haven't number #{number_three}"
    else
        puts num + " - This sequense have number #{number_three}"
    end

end
puts "Write the number n Example: 729"
n = gets.to_i

puts "Write searching number Example: 3"
number_three = gets.chomp

occurrence_number(n, number_three)