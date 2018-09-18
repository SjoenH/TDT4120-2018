# Øving 4, teori: Rangering i linear tid.

## Question 1: Sammenlikningsbasert sortering
Hva er worst case for sammenlikningsbasert sortering? Velg det alternativet som passer best.

- [ ] Θ(n2)
- [x] Ω(nlogn)
- [ ] Θ(n)
- [ ] Θ(nlogn)
- [ ] O(n2)
- [ ] Ω(n)
- [ ] O(nlogn)
- [ ] Ω(n2)
- [ ] O(n)

## Question 2: Sammenlikningsbasert sortering
Anta at du har en sammenlikningsbasert sorteringsalgoritme S som sorterer heltallene i en tabell med lengde n. Hvilke(t) alternativ er korrekt?

- [ ] S kan være bucket sort. (NEI!)
- [x] S kan ha best case-kjøretid Θ(n).
- [ ] S kan telle forekomster i tabellen for å oppnå kjøretid på Θ(n).
- [x] S kan ha worst case-kjøretid Θ(n^2).

## Question 3: Stabil sortering
Anta følgende tabell med elementer: [(x: 3, y: 5), (x: 1, y: 5), (x: 3, y: 3), (x: 3, y:4)]

Dersom en stabil sorteringsalgoritme brukes for å sortere tabellen på x-verdiene, hvordan vil listen se ut sortert?

- [ ] [(x: 3, y: 5), (x: 3, y: 3), (x: 3, y:4), (x: 1, y: 5)]
- [ ] [(x: 1, y: 5), (x: 3, y: 3), (x: 3, y: 4), (x: 3, y:5)]
- [x] [(x: 1, y: 5), (x: 3, y: 5), (x: 3, y: 3), (x: 3, y:4)]
- [ ] [(x: 3, y: 3), (x: 3, y:4), (x: 3, y: 5), (x: 1, y: 5)]

## Question 4: Stabil sortering
Hvilke(n) av de følgende algoritmene er stabil(e), gitt implementasjonen i pensumboka?

- [x] Bubblesort
- [x] Radix sort
- [x] Counting sort
- [x] Mergesort
- [x] Insertion sort
- [ ] Quicksort
- [ ] Heapsort


## Question 5: Counting sort
Anta at du skal bruke counting sort for å sortere n heltall, der hvert heltall er mellom 0 og k. Du vet at k er mye større enn n. Hva er den mest presise beskrivelsen av kjøretiden?

- [ ] Θ(n+k)  => Dette er korrekt, men ikke presist nok, ettersom \(k = \omega(n)\).
- [x] Θ(k)
- [ ] Ingen av alternativene. | ikke denne
- [ ] Θ(n)


## Question 6: Counting sort
Hvorfor itererer counting sort bakover gjennom A når heltallene skal settes inn i B?

- [ ] Fordi vi får elementer i tilfeldig rekkefølge om vi går forover gjennom A.
- [x] Fordi algoritmen skal være stabil.
- [ ] Fordi algoritmen krasjer om vi går forover gjennom A.
- [ ] Fordi vi ønsker å sette inn elementer som skal sist i B først.


## Question 7: Radix sort
Radix sort sorterer på det mest signifikante sifferet først.

- [ ] Sant.
- [x] Usant.

## Question 8: Radix sort
Hvilken av disse algoritmene ville vært den beste som en del av radix sort?

- [x] Mergesort
- [ ] Insertion sort | Insertion sort går tregere enn mergesort.
- [ ] Quicksort
- [ ] Bucket sort

## Question 9: Radix sort
Du skal sortere n heltall med d siffer ved hjelp av radix sort. Du kan anta at counting sort brukes som sorteringsrutine og at k=Θ(logn). Hva er den mest presise beskrivelsen av kjøretiden til algoritmen?

- [ ] Θ(d+n)
- [ ] Θ(n+k) | Feil
- [x] Θ(dn)
- [ ] Θ(nlogn)

## Question 10: Radix sort
Det er mulig å sortere desimaltall med to desimaler ved hjelp av radix sort.

- [x] Sant. 
- [ ] Usant.

Alle tallene kan multipliseres med 100. Deretter kan vi bruke radix sort.
TEIT OPPGAVE! => Da er det jo ikke aa sortere med desimaler...

## Question 11: Bucket sort
Bucket sort har en worst case-kjøretid på Θ(n).

- [ ] Sant.
- [x] Usant.

## Question 12: Bucket sort
Hva er kjøretiden for bucket sort i average case om vi bruker tre bøtter?

- [ ] O(3n)
- [ ] O(n/3)
- [x] O(n^2)
- [ ] O(n)

Fordi vi kun har tre bøtter vil vi ikke kunne anta at sortering av elementene i hver bøtte går på \(\mathrm{O}(1)\) tid. Average case for insertion sort er \(\mathrm{O}(n^2)\).
Teit respons.... Hvorfor insertion sort? Mener de bucket-sort?

## Question 13: Median
Hva er medianen i en sortert tabell?

- [ ] Differansen mellom største og minste tall.
- [ ] Gjennomsnittet.
- [x] Det midterste elementet.
- [ ] Det tallet som forekommer oftest.

## Question 14: Median
Vi kan ikke finne det k-te største elementet til en usortert liste uten å sortere den.

- [x] Usant.
- [ ] Sant.

## Question 15: Randomized Select
Hva er forventet kjøretid for randomized select?

- [ ] Θ(logn)
- [x] Θ(n)
- [ ] Θ(n2)
- [ ] Θ(nlogn)

## Question 16: Randomized select
Randomized select har bedre worst case-kjøretid enn randomized quicksort.

- [ ] Sant.
- [x] Usant.

## Question 17: Select
Hva er worst case-kjøretiden til select?

- [x] O(n)
- [ ] Ingen av alternativene.
- [ ] Θ(nlogn)
- [ ] Θ(n2)