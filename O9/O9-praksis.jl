# Question 1
function findset(x::DisjointSetNode)
    if (x !=x.p )
        x.p = findset(x.p)
	end
	x.p
end

# Question 2
function link!(x,y)
    if (x.rank > y.rank)
        y.p=x
        else (x.p =y)
        if (x.rank == y.rank)
            y.rank = y.rank + 1
        end
    end
end

function union!(x::DisjointSetNode,y::DisjointSetNode)
    link!(findset(x),findset(y))
end

# Question 3
function hammingdistance(s1::String,s2::String)
    teller = 0
    for i = 1:length(s1)
        if s1[i] != s2[i] 
            teller +=1
        end
    end
    teller
end