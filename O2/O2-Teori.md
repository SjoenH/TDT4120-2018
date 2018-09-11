# Øving 2

<!-- TOC -->

- [Øving 2](#øving-2)
    - [Oppgave 1.](#oppgave-1)
    - [Oppgave 2](#oppgave-2)
    - [Oppgave 3.](#oppgave-3)
    - [Oppgave 4.](#oppgave-4)
    - [Oppgave 5.](#oppgave-5)
    - [Oppgave 6.](#oppgave-6)
    - [Oppgave 7. Sirkulær dobbel-lenket liste](#oppgave-7-sirkulær-dobbel-lenket-liste)
    - [Oppgave 8.](#oppgave-8)
    - [Oppgave 9](#oppgave-9)
    - [Oppgave 10. Implementering av pekere og objekter](#oppgave-10-implementering-av-pekere-og-objekter)
    - [Oppgave 11. Implementering av pekere og objekter](#oppgave-11-implementering-av-pekere-og-objekter)
    - [Oppgave 12. Hashfunksjon](#oppgave-12-hashfunksjon)
    - [Oppgave 13. Hashfunksjon](#oppgave-13-hashfunksjon)
    - [Oppgave 14. Hashfunksjon](#oppgave-14-hashfunksjon)
    - [Oppgave 15. Hashfunksjon](#oppgave-15-hashfunksjon)
    - [Oppgave 16. Kjedet hashtabell](#oppgave-16-kjedet-hashtabell)
    - [Oppgave 17. Kjedet hashtabell](#oppgave-17-kjedet-hashtabell)
    - [Oppgave 18. Amortisert analyse](#oppgave-18-amortisert-analyse)
    - [Oppgave 19. Binærtre](#oppgave-19-binærtre)
    - [Oppgave 20. Amortisert analyse](#oppgave-20-amortisert-analyse)

<!-- /TOC -->

**Enqueue** => Legger til element etter halen(tail) i køen.

**Dequeue** => Fjerner Hodet. (flytter peker ett steg bak i køen)

**Sentinels** => Dummy object with pointer to the first and last node. All nodes, where their pointers are Nil, gets pointed to the sentinel. Therefore, the last node will point back to the start of the list.

## Oppgave 1.

``Q = [4, 7, 32, 72, 3]``

Enqueue(Q,3)

Answer:
``Q = [4, 7, 32, 72, 3, 3]``


## Oppgave 2

``Q = [4, 7, 32, 72, 3]``

Dequeue(Q)
Answer:
``Q = [ 7, 32, 72, 3]``

## Oppgave 3.

``Q = [4, 7, 32, 72, 3]``

Hva er det minste antallet enqueue/dequeue operasjoner du trenger for at køen Q skal endres til `[3,4,7,32,72,3]`

```
Q1 = [4, 7, 32, 72, 3]
Q2 = [*3*, 4, 7, 32, 72, 3]
```
Answer:
`(Dequeue * 4) + (Enqueue * 5) = 9 Enqueue/Dequeue operasjoner`


## Oppgave 4.

Anta du har en stakk

``S = [4,7,32,72,3]``

Hvor det bakerste elementet reperesenterer toppen av stakken slik som de definerer i kapittel 10.1 i læreboken.

Hvordan vil stakken se ut etter å ha kjørt Push(S,3)?

``S = [4,7,32,72,3]``
``Push(S,3) => [4,7,32,72,3,3]``

## Oppgave 5.

Hvordan vil stakken se ut etter å ha kjørt POP(S)?

``S = [4,7,32,72,3]
Push(S,3) => [4,7,32,72]``

## Oppgave 6.

Hva er det minste antallet PUSH/POP operasjoner du trenger for at stakken S skal endres til ``[3,4,7,32,72,3]``

```
S = [4,7,32,72,3]

POP * 5 + PUSH 6 = 11 PUSH/POP operasjoner
```

Siden 3 skal være underste element, må man fjerne alle elementer `(POP * 5)` for så å legge til hele stakken. `(PUSH * 6)`


## Oppgave 7. Sirkulær dobbel-lenket liste


Anta at du har en sirkulær dobbel lenket liste.

`L = [4,7,32,72,3]`

Hvor hodet peker på 4-tallet.

Hvordan vil listen se ut etter LIST-SEARCH(L,4) som definert i kapittel 10.2 i læreboken?

```
L = [4,7,32,72,3]
LIST-SEARCH(L,4)
NOTHING HAPPENS WHEN JUST SEARCHING...
POINTER JUST GETS MOVED AROUND
L = [4,7,32,72,3]
```

## Oppgave 8.

Hvordan vil listen se ut etter LIST-INSERT(L,X) for en node X med X.KEY = 3?
```
L = [4,7,32,72,3]
X.Key = 3

LIST-INSERT(L,X)

L = [3, 4, 7, 32, 72, 3]
```

## Oppgave 9

`L = [4,7,32,72,3]`
Hvordan vil listen se ut etter LIST-DELETE(L,X) for en node X med X.KEY = 4?

```
L = [4,7,32,72,3]
X.Key = 3

LIST-DELETE(L,X)

L = [7, 32, 72, 3]

```

## Oppgave 10. Implementering av pekere og objekter

Vi ønsker a implementere L som en tabell av objekter tilsvarende som i Cormen (figur 10.5 s242). Hviklet av alternativene under for startvariabel I og arrayene **N = next**, **K = key** og **P = prev** er korrekt implementert?
```
L  = [4,7,32,72,3]
```
"*/*"-indikerer tomt felt

a)
I = 2,
```
     1  2  3    4  5  6
N = [/, 6, 1,   3, 0, 4]
K = [3, 4, 72, 32, 0, 7]
P = [3, /,  4,  1, 0, 2]
```
Wrong: ``L[4]``.prev is 1. Should be 6.


i=4
```
| i    | 1  | 2  | 3  | 4  | 5  | 6  | 7  | 8  |
| ---- | -- | -- | -- | -- | -- | -- | -- | -- |
| Next | 8  | 6  | /  | 1  | 0  | 0  | 0  | 2  |
| Key  | 7  | 32 | 72 | 4  | 0  | 0  | 0  | 3  |
| Prev | 4  | 8  | 2  | /  | 0  | 0  | 0  | 1  |
```

**The one under here is correct.**
The one that starts on i=7
i = 7
```
| i    | 1  | 2  | 3  | 4  | 5  | 6  | 7  | 8  |
| ---- | -- | -- | -- | -- | -- | -- | -- | -- |
| Next | 3  | 0  | 4  | /  | 0  | 1  | 6  | 0  |
| Key  | 32 | 0  | 72 | 3  | 0  | 7  | 4  | 0  |
| Prev | 6  | 0  | 1  | 3  | 0  | 7  | /  | 0  |
```

## Oppgave 11. Implementering av pekere og objekter

Vi ønsker a implementere L som en tabell av objekter tilsvarende som i Cormen (figur 10.6 s243). Hviklet av alternativene under for startvariabel I og arrayene **N = next**, **K = key** og **P = prev** er korrekt implementert?

**tldr**: Svaralternativ som begynner med 4.

``L = [4,7,32,72,3]``

a)
I = 4
```
| i             | 1  | 2  | 3  | 4  | 5  | 6  | 7  | 8  | 9  | 10 | 11 | 12 | 13 | 14 | 15 |
| ------------- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- |
| Key,Next,Prev | 72 | 13 | 10 | 4  | 7  | /  | 7  | 10 | 4  | 32 | 1  | 7  | 3  | /  | 1  |
```

**Denne er korrekt. Altså den Ovenfor her**

``L = [4,7,32,72,3]``

b)
I = 13
```
| i             | 1  | 2  | 3  | 4  | 5  | 6  | 7  | 8  | 9  | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 |
| ------------- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- |
| Key,Next,Prev | 0  | 0  | 0  | 7  | 1  | 13 | 32 | 4  | 22 | 0  | 0  | 0  | 4  | 13 | /  | 3  | /  | 4  | 0  | 0  | 0  | 72 | 16 | 1  |
```
Nope, fordi ``L[13].next == 13``...


``L = [4,7,32,72,3]``
d)
I = 19
```
| i             | 1  | 2  | 3  | 4  | 5  | 6  | 7  | 8  | 9  | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 |
| ------------- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- |
| Key,Next,Prev | 32 | 7  | 13 | 0  | 0  | 0  | 72 | 16 | 1  | 0  | 0  | 0  | 7  | 1  | 19 | 3  | /  | 9  | 4  | 13 | /  | 0  | 0  | 0  |
|               |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
```
Går fint helt til vi skal traversere bakover...

## Oppgave 12. Hashfunksjon

Du får oppgitt at ``x.key = m`` og ``h(m)=j`` der ``h`` er en hashfunksjon. Da er...
`x` elementet, `m` nøkkelen og `j` hashjen.

## Oppgave 13. Hashfunksjon

Hva betyr kollisjon (eng. collision) i forbindelse med hashtabeller?

d -> Flere ulike faktiske nøkler gir samme hashverdi.

## Oppgave 14. Hashfunksjon

En god hashfunksjon vil, for en tabell av lengde n, kunne garantere at ``k < n`` innsettinger ikke vil gi kollisjon?

Hva er K?

Svar: `Nei`

## Oppgave 15. Hashfunksjon


Svar: nei. Vi kan ikke finne igjen elementet etter innsetting. Iallefall vanskelig. Og tilfeldig.

## Oppgave 16. Kjedet hashtabell

Hvis vi har en funksjon DELETE(T,x) der `T` er en kjedet hashtabell og `x` er et listenode, så er worst case kjøretid...

Svar: O(n) for enkel lenket liste og O(1) dobbel lenket liste.
Ikke O(n)...

## Oppgave 17. Kjedet hashtabell

Hva er worst-case kjøretiden for innsetting in en hashtabell om man bruker kjeding ved kollisjoner? Anta at innsettingen også må sjekke om elementet allerede finnes i tabellen.

Svar: `O(n)`

## Oppgave 18. Amortisert analyse

For å unngå at vi lager for stor initiell hashtabell ønsker vi å doble størrelsen på hastabellen hvor gang lastfaktoren bilr 1/4.
Hvis vi benytter Amortisert analyse får vi at kjøretiden for innsetting er...

Svar: `O(1). Oppdatering! Oppgavesvaret er feil. Skulle ha vaert O(n)...`

## Oppgave 19. Binærtre

Anta du har binærtre `G` og legger til én ny kant i treet. Du vil nå ha...

Svar: en syklik graf
Var ikke: et binærtre med én kant mer (?)

## Oppgave 20. Amortisert analyse

Hvorfor er amartisert analyse bedre enn vanlig worst-case-beregning i mange tilfeller?

Svar: Worst case kan være altfor pessimistisk.
