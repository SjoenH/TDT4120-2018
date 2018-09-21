# Øving 4, praksis: Rangering i lineær tid
I denne øvingen skal vi implementere leksikalsk sortering av strenger i lineær tid. Først lager vi noen hjelpefunksjoner som utfører ulike varianter av counting sort, før bruker disse som en del av en radix sort-variant.

<!-- TOC -->

- [Øving 4, praksis: Rangering i lineær tid](#øving-4-praksis-rangering-i-lineær-tid)
    - [Question 1: Implementer tellesortering på strenger.](#question-1-implementer-tellesortering-på-strenger)
    - [Question 2: Implementer tellesortering på strenger etter lengde.](#question-2-implementer-tellesortering-på-strenger-etter-lengde)
    - [Question 3: Flexradix](#question-3-flexradix)

<!-- /TOC -->

## Question 1: Implementer tellesortering på strenger.
Du skal først implementere en variant av counting sort der strengene blir stabilt sortert etter bokstaven i en gitt posisjon.

Implementer funksjonen counting_sort_letters(A, position) som sorterer alle strengene i A basert på bokstaven i posisjon position og returnerer et nytt array.

A er et array med strenger.
position er en Int.
Du kan anta at alle strengene er lange nok til at det er en bokstav i posisjon position.
Du kan anta at alle strengene kun inneholder små bokstaver mellom a og z.
Funksjonen skal returnere et nytt, sortert array.
Eksempel:

counting_sort_letters(["ccc", "cba", "ca", "ab", "abc"], 2) skal returnere ["ca", "cba", "ab", "abc", "ccc"]

```julia

    *

```

## Question 2: Implementer tellesortering på strenger etter lengde.
Du skal nå implementere en variant av counting sort der strengene blir stabilt sortert etter lengde.

Implementer funksjonen counting_sort_length(A) som sorterer alle strengene i A etter lengde og returnerer et nytt array.

A er et array med strenger.
Funksjonen skal returnere et nytt, sortert array.
Eksempel:

counting_sort_length(["bbbb", "aa", "aaaa", "ccc"]) skal returnere ["aa", "ccc", "bbbb", "aaaa"].

```julia


```


## Question 3: Flexradix
Du skal nå implementere leksikalsk sortering av strenger ved hjelp av en radix sort-variant. Du skal bruke funksjonene implementert i de forrige deloppgavene for å løse denne oppgaven.

Sorteringen må gå på lineær tid i den totale lengden av strengene, og ikke som funksjon av max_length. Dvs. at om du har 100 strenger, der en er av lengde 100 og 99 er av lengde 1 er problemstørrelsen 199 (og ikke 100∗100=10000).

Implementer funksjonen flexradix(A, max_length) som sorterer strengene i A i leksikalsk rekkefølge og returnerer et nytt array.

A er et array med strenger.
max_length er lengden på den lengste strengen.
Du kan anta at alle strengene kun inneholder små bokstaver mellom a og z.
Funksjonene counting_sort_length og counting_sort_letters er gjort tilgjengelig for deg, så selv om du ikke har gjort de forrige oppgavene kan du løse denne.
Funksjonen skal returnere et nytt, sortert array.
Eksempel:

flexradix(["kobra", "aggie", "agg", "kort", "hyblen"], 6) skal returnere ["agg", "aggie", "hyblen", "kobra", "kort"].


```julia


```
