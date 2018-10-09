# Øving 7, teori: Grådige Algoritmer

## Question 1: Grådige algoritmer
Hvilke(n) påstand(er) er korrekt(e)?
-[x] Grådige algoritmer trenger ikke å vite løsningen på alle mulige delproblemer før den kan gjøre det grådige valget.
-[ ] Grådige algoritmer tar globalt optimale valg.
-[x] Grådige algoritmer brukes til å løse optimaliseringsproblemer.
-[ ] Dersom man kan løse et problem med dynamisk programmering kan man også løse det med en grådig algoritme.
-[ ] Grådige algoritmer finner alltid den globalt optimale løsningen.
-[ ] Grådige algoritmer pleier å ombestemme seg senere når de har funnet ut mer om løsningene på delproblemene.

## Question 2: Grådige algoritmer
Hvilke to egenskaper må et problem ha for at vi kan bruke en grådig algoritme?
-[ ] Ingen av alternativene er korrekt
-[ ] Syklisk og optimal substruktur
-[ ] Polynomisk kjøretid og problemet lar seg redusere til bare ett delproblem
-[x] Grådighetsegenskapen og optimal substruktur
-[ ] Grådighetsegenskapen og polynomisk kjøretid

## Question 3: Grådige algoritmer
Hvorfor kan det være ønskelig å bruke en grådig algoritme istedenfor dynamisk programmering?
-[ ] For å utnytte overlappende delproblemet på en bedre måte
-[x] Algoritmen kan være enklere å implementere og ha bedre kjøretid
-[ ] Fordi vi ønsker å løse problemet rekursivt - noe vi ikke får til med dynamisk programmering.

## Question 4: Grådige algoritmer
Hva har grådige algoritmer og dynamisk programmering til felles?
-[ ] Begge utnytter overlappende delproblemer
-[ ] Begge løser problemer nedenfra og opp
-[ ] Begge garanterer O(n) kjøretid
-[x] Begge utnytter optimal delstruktur

## Question 5: Grådige algoritmer
Hvilke(n) påstand(er) er korrekt(e)?
-[ ] En grådig algoritme kan enkelt løse både 0-1 og fractional knapsack-problemet
-[x] En grådig algoritme kan ikke løse 0-1 knapsack-problemet
-[ ] En grådig algoritme kan ikke løse fractional knapsack-problemet

## Question 6: Aktivitetsutvalg 1
Du ønsker å velge ut så mange aktiviteter som mulig fra en mengde av åtte aktivitet uten at de overlapper. Aktivitetene har følgende start og sluttidspunkter.

| TASK | START | FINISH |
| ---- | ----- | ------ |
| 1    | 12    | 14     |
| 2    | 12    | 17     |
| 3    | 6     | 10     |
| 4    | 15    | 18     |
| 5    | 16    | 17     |
| 6    | 0     | 5      |
| 7    | 4     | 7      |
| 8    | 6     | 9      |
Gitt at du hadde brukt RECURSIVE-ACTIVITY-SELECTOR (side 419) til å løse problemet. Hvilken aktivitet ville vært den 2. i løsningsmengden A?
-[x] 8
-[ ] 3
-[ ] 6
-[ ] 2
-[ ] 7
-[ ] 4
-[ ] 5
-[ ] 1

## Question 7: Aktivitetsutvalg 2
(Bruk tabellen i oppgave 'Aktivitetsutvalg 1')

Gitt at du hadde brukt GREEDY-ACTIVITY-SELECTOR (side 421) på tabellen. Hvilken aktivitet ville vært den 3. aktiviteten i løsningsmengden A?

MERK For at algoritmen skal fungere vil du måtte omorganisere elementene i tabellen slik at antagelsen til GREEDY-ACTIVITY-SELECTOR er oppfylt.

| TASK | START | FINISH |
| ---- | ----- | ------ |
| 6    | 0     | 5      |
| 7    | 4     | 7      |
| 3    | 6     | 10     |
| 8    | 6     | 9      |
| 1    | 12    | 14     |
| 2    | 12    | 17     |
| 4    | 15    | 18     |
| 5    | 16    | 17     |

-[ ] 2
-[ ] 7
-[x] 1
-[ ] 8
-[ ] 6
-[ ] 3
-[ ] 5
-[ ] 4

## Question 8: Aktivitetsutvalg 3
(Bruk tabellen fra oppgave 'Aktivitetsutvalg 1')

Gitt at du hadde brukt RECURSIVE-ACTIVITY-SELECTOR (side 419) på tabellen. Hva blir løsningen (aktiviteter i kronologisk rekkefølge)?
-[x] 6, 8, 1, 5
-[ ] 6, 7, 3, 2
-[ ] 6, 3, 2, 5
-[ ] 6, 7, 1, 5

## Question 9: Aktivitetsutvalg 4
Hva forteller teorem 16.1 i boka om aktivitetsutvalg-problemet?
-[ ] Det har optimal substruktur
-[ ] Det lar seg ikke løse
-[ ] Det har overlappende delproblemer
-[x] At det har grådighetsegenskapen

## Question 10: Huffman-koder 1
Du ønsker å finne optimal prefix-kode for en streng. Strengens alfabet representeres ved bokstavene a til g. Frekvensene er som følger:

| BOKSTAV | FREKVENS |
| ------- | -------- |
| a       | 50       |
| b       | 2        |
| c       | 20       |
| d       | 25       |
| e       | 200      |
| f       | 80       |
| g       | 60       |

Gitt at vi velger å kode alfabetet på følgende måte:

| Bokstav | Kode  | FREKVENS | Kode-lengde | Kode-lengde * Frekvens   |
| ------- | ----- | -------- | ----------- | ------------------------ |
| a       | 00001 | 50       | 5           | 250                      |
| b       | 001   | 2        | 3           | 6                        |
| c       | 1     | 20       | 1           | 20                       |
| d       | 00000 | 25       | 5           | 125                      |
| e       | 0001  | 200      | 4           | 800                      |
| f       | 010   | 80       | 3           | 240                      |
| g       | 011   | 60       | 3           | 180                      |
| ----    | ---   | ---      | ---         | 250+6+20+125+800+240+180 |
| ---     | ---   | ---      | SUM         | = 1621                   |

Hvor mange bits må vi bruke for å representere strengen?
-[ ] 1689
-[ ] 1537
-[ ] 1546
-[x] 1621

## Question 11: Huffman-koder 2
(Bruk tabellen fra oppgave Huffman-koder 1)

Du bruker Huffmans algoritme. Hvilke to bokstaver slår du sammen først?
-[ ] c og d
-[x] b og c
-[ ] a og e
-[ ] a og b
-[ ] e og f

## Question 12: Huffman-koder 3
(Bruk tabellen fra oppgave Huffman-koder 1)

| Bokstav | Kode  | FREKVENS | Kode-lengde | Kode-lengde * Frekvens     |
| ------- | ----- | -------- | ----------- | -------------------------- |
| a       | 101   | 50       | 3           | 3*50 = 150                 |
| b       | 10000 | 2        | 5           | 2*5 = 10                   |
| c       | 10001 | 20       | 5           | 20*5 = 100                 |
| d       | 1001  | 25       | 4           | 25*4= 100                  |
| e       | 0     | 200      | 1           | 200*1 = 200                |
| f       | 111   | 80       | 3           | 80*3 = 240                 |
| g       | 110   | 60       | 3           | 60*3 = 180                 |
| ---     | ----  | ---      | ---         | 150+10+100+100+200+240+180 |
| ---     | ---   | ---      | SUM         | = 980                      |
   
Du bruker Huffmans algoritme. Hvor mange bits blir b kodet til?
-[ ] 2
-[ ] 3
-[ ] 1
-[ ] 6
-[x] 5
-[ ] 4

## Question 13: Huffman-koder 4
(Bruk tabellen fra oppgave Huffman-koder 1)

Du bruker Huffmans algoritme. Hvor mange bits blir d kodet til?
-[ ] 2
-[ ] 5
-[ ] 1
-[x] 4
-[ ] 6
-[ ] 3

## Question 14: Huffman-koder 5
(Bruk tabellen fra oppgaven Huffman-koder 1)

Du bruker Huffmans algoritme. Hvor mange bits blir e kodet til?
-[ ] 6
-[ ] 3
-[ ] 4
-[x] 1
-[ ] 2
-[ ] 5

## Question 15: Huffman-koder 6
(Bruk tabellen fra oppgave Huffman-koder 1)

| Bokstav | Kode  | FREKVENS | Kode-lengde | Kode-lengde * Frekvens     |
| ------- | ----- | -------- | ----------- | -------------------------- |
| a       | 101   | 50       | 3           | 3*50 = 150                 |
| b       | 10000 | 2        | 5           | 2*5 = 10                   |
| c       | 10001 | 20       | 5           | 20*5 = 100                 |
| d       | 1001  | 25       | 4           | 25*4= 100                  |
| e       | 0     | 200      | 1           | 200*1 = 200                |
| f       | 111   | 80       | 3           | 80*3 = 240                 |
| g       | 110   | 60       | 3           | 60*3 = 180                 |
| ---     | ----  | ---      | ---         | 150+10+100+100+200+240+180 |
| ---     | ---   | ---      | SUM         | = 980                      |

Du bruker Huffmans algoritme. Hvor mange bits trenger du for å kode strengen med løsningen du finner?
-[ ] 450
-[ ] 452
-[ ] 561
-[ ] 789
-[ ] 1023
-[ ] 603
-[ ] 734
-[x] 980
-[ ] 958