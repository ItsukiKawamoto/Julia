for i in 1:100
    if i % 3 == 0 && i % 5 != 0
        print("Fizz, ")
    elseif i % 3 != 0 && i % 5 == 0
        print("Buzz, ")
    elseif i % 3 == 0 && i % 5 == 0
        print("FizzBuzz, ")
    else
        print(i, ", ")
    end
end