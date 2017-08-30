def get_perfects_num(n) # Get All perfect numbers < n
    
    numbers = (1..n).to_a   # Convert range to array

    arr = numbers.map do |number| # Create result array witch contains sum divedes
        a = (1..number).select {|n| number % n == 0 and n != number}
        a.inject(0){|sum,x| sum + x }
    end
    
    i, result = 0, []
    while i<arr.length
        if numbers[i] == arr[i] # Compare to value range array and SUM DIVIDES 
            result << arr[i]
        end
    i=i+1
    end
    p result.join(",") # Convert array to string
end

n = gets.to_i

get_perfects_num(n)