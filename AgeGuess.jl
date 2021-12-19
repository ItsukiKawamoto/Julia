const ageMax = 110

test = Base.prompt("Set mode") == "TEST" ? true : false

function upper(num, age)
    while true
        print(Int(num))
        if test
            print("歳より上ですか？")
            if age > num
                println(": Y")
                answer = "Y"
            else
                println(": N")
                answer = "N"
            end
        else
            answer = Base.prompt("歳より上ですか？")
        end
        if answer == "y" || answer == "Y"
            return true
        elseif answer == "n" || answer == "N"
            return false
        else
            println("'Y'か'N'を入力してください。")
        end
    end
end

function trial(age)
    i = 0
    while age > 0
        age = floor(age / 2)
        i += 1
    end
    # println(i)
    return i
end

for j = 0:(test ? ageMax : 0)
    guess = floor(ageMax / 2)
    beforeMax = ageMax
    beforeMin = 0
    for i = 1:trial(ageMax)
        if upper(guess, j)
            beforeMin = guess + 1
            guess = ceil((guess + beforeMax) / 2)
        else
            beforeMax = guess
            guess = floor((guess + beforeMin) / 2)
        end
        if beforeMax == beforeMin
            break
        end
    end
    println("あなたの年齢は", Int(guess), "歳です。")
    println()
end