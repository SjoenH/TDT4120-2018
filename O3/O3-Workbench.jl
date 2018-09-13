# Question 1: Modifisere binærsøk
## Binærsøk er en enkel, men viktig algoritme med mange bruksområder. Les om den i appendiks C («Binærsøk») i pensumheftet.
## Under vises julia-koden for funksjonen bisect_left som er en variant av binærsøk. Denne har noen forskjeller sammenliknet med Bisect-algoritmen fra pensumheftet. Dersom det finnes flere forekomster av v i tabellen, returneres en indeks slik at om v settes inn på denne indeksen, havner elementet direkte til venstre for de andre forekomstene. Dersom v ikke finnes i A er indeksen som returneres slik at v kan settes inn på denne indeksen i sortert rekkefølge.

function bisect_left(A, p, r, v)
    i = p
    if p < r
       q = floor(Int, (p+r)/2)  # floor() er en innebygd funksjon som runder ned. ceil() runder opp.
       if v <= A[q]
           i = bisect_left(A, p, q, v)
       else
           i = bisect_left(A, q+1, r, v)
       end
    end
    return i
end  

#Implementer funksjonen => bisect_right(A, p, r, v)


function bisect_right(A, p, r, v)
    i = p
    if p < r
        q = floor(Int, (p+r)/2)
        if v < A[q]
            i = bisect_right(A, p, q, v)
       	else
            i = bisect_right(A, q+1, r, v)
        end
    end
    return i
end

A = [0,1,1,1,2,3,4,5,6,7,8,9]

V = 1
#@info "V" V
#@info "index where we want to insert V"  bisect_left(A,1,length(A)+1,V)
#@info "The list is still" A

@info "Bisect_left" bisect_left(A,1,length(A)+1,V) "should be 2"
@info "Bisect_right" bisect_right(A,1,length(A)+1,V) "Should be 5"


