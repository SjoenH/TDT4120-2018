# Øving 3, teori: Splitt og hersk

<!-- TOC -->

- [Øving 3, teori: Splitt og hersk](#øving-3-teori-splitt-og-hersk)
    - [Question 1: Sorteringsalgoritmer](#question-1-sorteringsalgoritmer)
    - [Question 2: Sorteringsalgoritmer](#question-2-sorteringsalgoritmer)
    - [Question 3: Sorteringsalgoritmer](#question-3-sorteringsalgoritmer)
    - [Question 4: Sorteringsalgoritmer](#question-4-sorteringsalgoritmer)
    - [Question 5: Sorteringsalgoritmer](#question-5-sorteringsalgoritmer)
    - [Question 6: Substitusjonsmetoden](#question-6-substitusjonsmetoden)
    - [Question 7: Master-teoremet](#question-7-master-teoremet)
    - [Question 8: Master-teoremet](#question-8-master-teoremet)
    - [Question 9: Master-teoremet](#question-9-master-teoremet)
    - [Question 10: Rekursjonstrær](#question-10-rekursjonstrær)
    - [Question 11: Variabelskifte](#question-11-variabelskifte)
    - [Question 12: Kjøretidsanalyse](#question-12-kjøretidsanalyse)
    - [Question 13: Kjøretidsanalyse](#question-13-kjøretidsanalyse)
    - [Question 14: Kjøretidsanalyse](#question-14-kjøretidsanalyse)
    - [Question 15: Kjøretidsanalyse](#question-15-kjøretidsanalyse)

<!-- /TOC -->

--------------------------------------------------------------------------------------

## Question 1: Sorteringsalgoritmer
Vi har en usortert liste med n elementer, og vi ønsker å finne ut hvor mange unike tall det er i listen. Etter algoritmene vi har lært til og med forelesningen om splitt og hersk, hva er den raskeste kjøretiden vi kan garantere for dette problemet (den beste worst-case kjøretiden)?

- [ ] $Θ(log logn)$
- [ ] $Θ(n−−√)$
- [ ] $Θ(n)$
- [x] $Θ(nlogn)$
- [ ] $Θ(logn)$
- [ ] $Θ(n2)$
- [ ] $Θ(nn−−√)$
- [ ] Ingen av alternativene stemmer

`Siden listen er usortert/vi skal finne ut hvor mange unike tall det er i listen, saa maa man traversere gjennom hele listen. Man trenger dog ikke aa sortere listen, MEN dersom det er tenkt at listen ogsaa skal sorteres saa blir det O(n log n)`

## Question 2: Sorteringsalgoritmer
Denne oppgaven handler om quicksort og mergesort. Med “sorteringsarbeid” menes her den faktiske flyttingen av tall som en sorteringsalgoritme gjør. Hvilket av følgende alternativ er sant?

- [ ] Begge algoritmene gjør sorteringsarbeidet etter det rekursive kallet
- [ ] Begge algoritmene gjør sorteringsarbeidet før det rekursive kallet
- [ ] Mergesort gjør sorteringsarbeidet før det rekursive kallet, mens quicksort gjør det etterpå
- [x] Quicksort gjør sorteringsarbeidet før det rekursive kallet, mens mergesort gjør det etterpå

## Question 3: Sorteringsalgoritmer
La liste A være en liste sortert i stigende rekkefølge, og B en liste sortert i synkende rekkefølge. Hvilken påstand stemmer da om kjøretiden til Quicksort?
- [x] Begge har kjøretid $Θ(n^2)$
- [ ] Kjøretid for liste B er $Θ(n^2)$ og for liste A er kjøretiden $Θ(nlogn)$
- [ ] Kjøretid for liste A er $Θ(n^2)$ og for liste B er kjøretiden $Θ(nlogn)$
- [ ] Begge har kjøretid $Θ(nlogn)$

## Question 4: Sorteringsalgoritmer
Hvilken av algoritmene forbruker mest ekstra minne i average case?
- [ ] Quicksort
- [x] Merge sort

## Question 5: Sorteringsalgoritmer
All input kan gi worst-case kjøretid for randomized-quicksort
- [ ] Usant
- [x] Sant

## Question 6: Substitusjonsmetoden
Du ønsker å teste om kjøretiden til fire ulike, rekursive algoritmer er O(n2) ved hjelp av substitusjonsmetoden. Først setter du opp rekurrenser for algoritmene, og så forutsetter du for hver av dem den induktive hypotesen at T(n)≤c⋅n2. Etter å ha gjennomført substitusjonsmetoden for hver av rekurrensene får du resultatene
- $T1(n)≤c⋅n2−5n$
- $T2(n)≤c⋅n2+5n$
- $T3(n)≤c⋅n2+1$
- $T4(n)≤c⋅n2−1$

Hvilke(n) av algoritmene har du greid å bevise at har kjøretid O(n2)? Anta at grunntilfellene i den matematiske induksjonen også stemmer.
- [ ] T2
<<<<<<< HEAD
- [ ] T1 *!!
- [x] T3
- [x] T4 *!!
=======
- [ ] T1
- [x] T3
- [x] T4
>>>>>>> 35f40334057bedd3822933bc5406d31dc63964c3

## Question 7: Master-teoremet
La T(n)=27⋅T(n/3)+n3. Hvilket tilfelle tilhører rekurrensen når du benytter master-teoremet?
- [ ] Case 1
- [ ] Ingen av dem
<<<<<<< HEAD
- [ ] Case 2 *!!
=======
- [ ] Case 2
>>>>>>> 35f40334057bedd3822933bc5406d31dc63964c3
- [x] Case 3

## Question 8: Master-teoremet
La T(n)=27⋅T(n/3)+n3. Hva blir kjøretiden?
- [ ] Θ(n4)
- [ ] Θ(n3logn)
- [ ] Θ(n4logn)
<<<<<<< HEAD
- [x] $Θ(n^3)$
=======
- [x] Θ(n3)
>>>>>>> 35f40334057bedd3822933bc5406d31dc63964c3

## Question 9: Master-teoremet
La T(n)=4⋅T(n/2)+n3. Hva blir kjøretiden?
- [ ] Θ(n2)
- [x] Θ(n3)
- [ ] Θ(n4)
- [ ] Θ(n3logn)

## Question 10: Rekursjonstrær
La T(n)=T(n/3)+T(n/2)+T(n−1)+1 der T(1)=1. Hva blir høyden til rekursjonstreet?
- [ ] Θ(n2)
- [x] Θ(n)
- [ ] Θ(logn)
- [ ] Θ(nlogn)

## Question 11: Variabelskifte
Løs rekurensen gitt ved T(n)=T(n−−√)+n ved hjelp av variabelskifte. Hva blir kjøretiden?

Hint: n−−√ er det samme som n12.

- [ ] Θ(loglogn)
- [ ] Θ(logn)
- [x] Θ(n)
- [ ] Θ(nlogn)

## Question 12: Kjøretidsanalyse
Funksjonen gjoerNoe(n) under har kjøretid Θ(n). Hva blir kjøretiden til funksjonen f1(n)?

Hint: Sett opp to rekurrenser T1(n) og T2(n) og finn først en løsning på lukket form for T1(n).

```julia
function f1(n)
    gjoerNoe(n)
    if n > 1
        f1(n / 2)
        f2(n - 2)
    end
end
```
```julia
function f2(n)
    gjoerNoe(n)
    if n > 1
        f1(n / 2)
    end
end
```

- [ ] Θ(logn)
- [ ] Θ(n2)
- [ ] Θ(n)
- [x] Θ(nlogn)

## Question 13: Kjøretidsanalyse
Hva blir kjøretiden til funksjonen f3(n)?
```julia
function f3(n)
    if n > 42
        f3(n - 42)
        f3(42)
    end
end
```

- [ ] O(nlogn)
- [ ] O(1)
- [ ] Den vil aldri stoppe
- [x] O(n)
- [ ] O(logn)

## Question 14: Kjøretidsanalyse
Hva blir kjøretiden til funksjonen f4(n)? println tar konstant tid.
```julia
function f4(n)
    for i in 1:n
        println("Algdat ruler!")
    end

    if n > 1
        f4(3/4* n)
        f4(1/4* n)
    end
end
```
- [ ] O(1)
- [ ] O(n)
- [x] O(nlogn)
- [ ] O(n2)
- [ ] O(logn)

## Question 15: Kjøretidsanalyse
Funksjonen gjoerNoeAnnet(n) under har kjøretid Θ(n2). Hva blir kjøretiden til funksjonen f5(n)?

```julia
function f5(n)
    gjoerNoeAnnet(n/6)

    if n > 1
        f5(n/2 - 2)
        f5(n/2 - 3)
    end
end
```

- [ ] O(nlogn)
- [ ] O(n)
- [ ] O(n2logn)
<<<<<<< HEAD
- [x] O(n2)
=======
- [ ] O(n2)
>>>>>>> 35f40334057bedd3822933bc5406d31dc63964c3
- [ ] O(logn)
