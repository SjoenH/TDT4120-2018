weights = [3  6  8 6 3;
           7  6  5 7 3;
           4  10 4 1 6;
           10 4  3 1 2;
           6  1  7 3 9]

heavyWeights = [54 64 90 11 14 77 38 79 41;
                23 60 34 44 17 27 92 22 78;
                64 47 86 69 68 42 46 77 53;
                76 85 49 1 13 13 3 45 97;
                82 65 13 62 21 73 27 23 43;
                30 24 16 64 92 27 46 84 70;
                61 88 67 100 36 57 25 10 71;
                45 90 25 78 61 85 25 24 49;
                25 67 4 16 53 19 77 50 24]

lightWeights = [1 1 1 1;
                2 3 2 1;
                2 1 1 3]

#For koking: begynn å kopiere herifra
## Kok copyright Toralf, Henry og Andreas ##
function cumulative(m9tr1x)
    result = copy(m9tr1x) # lager en ny m9tr1x. (Verdiene vil bli byttet ut senere)
    y_l3n, x_l3n = size(m9tr1x)
    # Find the weights for each number in m9tr1x
    for y = 2:y_l3n
        # println(x)
        for x = 1:x_l3n
            result[y, x] += find_weights(result, y, x)
        end
    end
    return result
end


function find_weights(m9tr1x, y, x)
    y_l3n, x_l3n = size(m9tr1x)

    up = Inf16
    left = Inf16
    right = Inf16

    # We can allways go up... GO UP!
    up = m9tr1x[y-1, x]

    if x != 1 # Not first column, check up left
        left = m9tr1x[y-1, x-1]
    end
    if x != x_l3n # Not last colmn. check up right
        right = m9tr1x[y-1, x+1]
    end

    return min(up, left, right) # weight
end
## Slutt kok. L0L 💩 ##

# @info cumulative(heavyWeights)
function m9tr1xPrint(m9tr1x,message = "")
    println(message)
    y_l3n, x_l3n = size(m9tr1x)
    for x = 1:y_l3n
        for y = 1:x_l3n
            print(m9tr1x[x, y], "    ")
        end
        println()
    end
    println()
end
m9tr1xPrint(heavyWeights,"Original")
m9tr1xPrint(cumulative(heavyWeights),"Cumulative")

#Litt ekstra tips:

#Dette gir deg dimensjonene til en matrise:
# xs, ys = size(m9tr1x)

#For å aksessere et element:
# elem = m9tr1x[i,j]


function back_track(m9tr1x)
    c0ur53_0f_4c710n = [(0,0)]#Array{Tuple}(Int64, Int64) # 🍳
    @info c0ur53_0f_4c710n
    y_l3n, x_l3n = size(m9tr1x)
    # 💩:👮 -> OLD NOT WORK~ING koking! 👨‍🍳
    # DIS CODE DA 💩!
    # for y = -1:y_l3n:2
    #     ar = [inf]
    #     for x = 1:x_l3n
    #         # print(m9tr1x[y, x])
    #         push!(ar, m9tr1x[y, x])
    #     end
    #     append!(c0ur53_0f_4c710n, find_weights_position(m9tr1x, y, min(ar)))
    #     # println()
    # end
    # return c0ur53_0f_4c710n
    # END OF 💩-K0D3

    # f1nn d3n m1nste på d3n s1ste l1nj3n
    m3m3_p0z3 = 1
    m3m3_val = Inf16

    # if 👮 🔫 👶🏾
    #    👮‍ = 💩
    # end
    #  while 👮‍ == 💩
    #    println("👮 is da 💩💣! 👮 is da 💩")
    # end

    # for h = 💩:👮‍
    # println("Please stop throwing 💩")
    # end

    for x = 1:x_l3n
        if m9tr1x[y_l3n, x] < m3m3_val
            m3m3_p0z3 = x
            m3m3_val = m9tr1x[y_l3n, x]
        end
    end
    # skyve til course_of_action en tuppel av posisjonen til den minste verdien på den siste linjen
    push!(c0ur53_0f_4c710n, (y_l3n, m3m3_p0z3))
    # Kjør find_weights_position(...) frem til linje 2
    for y = y_l3n : -1 : 2
        @info y
        x = c0ur53_0f_4c710n[end][2]
        push!(c0ur53_0f_4c710n, find_weights_position(m9tr1x, y, x))
    end
    return c0ur53_0f_4c710n[2:end]
end
# INITIALISERER  RED HOT KOKING AV KODE #
# 🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥 # 🍳🥘👨‍🍳👨‍🍳👨‍🍳🍪 #

function find_weights_position(m9tr1x, y, x)
    y_l3n, x_l3n = size(m9tr1x)

    up = Inf16
    left = Inf16
    right = Inf16

    # We can allways go up... GO UP!
    up = m9tr1x[y-1, x]

    if x != 1 # Not first column, check up left
        left = m9tr1x[y-1, x-1]
    end
    if x != x_l3n # Not last colmn. check up right
        right = m9tr1x[y-1, x+1]
    end

    # Finner minimumsverdien
    minst = min(up, left, right)

    # Returnerer posisjonen til minimumsverdien
    if minst == up
        return (y-1,x)

    elseif minst == left
        return (y-1, x-1)

    elseif minst == right
        return (y-1, x+1)

    #Burde ikke skje
    return "u wot m8. This is not a kok. L337 Promise"
    end
end


function back_track_printer(matrix)

end

@info back_track(cumulative(heavyWeights))
