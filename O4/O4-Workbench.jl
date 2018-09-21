t(letter) = Int(letter) - 96

function counting_sort_letters(A, position, max_length=30)
  B = Array{String}(undef,length(A))
  C = zeros(Int64,max_length)
  for letters in A
    letter_position = t(letters[position])
    C[letter_position]+=1
  end
  for i=2:length(C)
    C[i] += C[i - 1]
  end
  for j=1:length(A)
    i = length(A) - j + 1
    a_index = t(A[i][position])
    B[C[a_index]] = A[i]
    C[a_index]-=1
  end
 return B
end

accepted_response = ["ca", "cba", "ab", "abc", "ccc"]

# @time counting_sort_letters(["ccc", "cba", "ca", "ab", "abc"], 2)==accepted_response

function counting_sort_length(A)
  # Returnerer direkte om det bare er ett (eller ingen) ord
  if length(A) <= 1
      return A
  end

  # Finner det lengste ordet
  lw = 0
  for i in A
      if length(i) >= lw
          lw = length(i)
      end
  end

  a_lenght = length(A)
  B = Array{String}(undef, length(A))
  C = zeros(Int64, lw + 1)

  # Setter inn i liste C
  for i in A
      p = length(i) + 1
      C[p] += 1
  end

  # Klargjør liste C for innsettingen i liste B
  for i = 2:length(C)
      C[i] += C[i-1]
  end

  # Setter inn i liste B i sortert rekkefølge

  for i = length(A) : -1 : 1
      p = length(A[i])+1
      B[C[p]] = A[i]
      C[p] -= 1
  end
  return B
end

# @info "COUNTING SORT!" counting_sort_length(["bbbb","aaaaaa", "aa", "aaaa", "ccc", "aaaaa"]) == ["aa", "ccc", "bbbb", "aaaa", "aaaaa","aaaaaa"]
# @info "Counting sort" counting_sort_length(["bbbb", "aa", "aaaa", "ccc", "aaaaa"])
# @info "Counting 2" counting_sort_length(["a"])

te(letter) = Int(letter) - 96

function counting_sort_letters_two(A, position, max_length=3)
  B = Array{String}(undef,length(A))
  C = zeros(Int64,max_length)
  for letters in A
    letter_position = te(letters[position])
    C[letter_position]+=1
  end
  for i=2:length(C)
    C[i] += C[i - 1]
  end
  for j=1:length(A)
    i = length(A) - j + 1
    a_index = te(A[i][position])
    B[C[a_index]] = A[i]
    C[a_index]-=1
  end
 return B
end

function flexradix(A, max_length)
for i in 1:length(A)
    i_length = length(A[i])
    if i_length < max_length
        for j=1:(max_length - i_length)
            A[i]*= " "
        end
    end

end
    println(A)
  for j = 1:max_length
    i = max_length - j + 1
    A = counting_sort_letters(A,i)
  end
  for i in 1:length(A)
  A[i] = rstrip(A[i])
  end
  return A
end

#flexradix(["kobra", "aggie", "agg", "kort", "hyblen"],6)