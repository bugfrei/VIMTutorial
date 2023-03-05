# VIMTutorial Entwickler-Doku

## Einstellungen

tutorial.json
{
    last: {                             Zuletzt gespielt
        chapter: 1,                     Kapitel
        lesson: 1                       Lesson
    },
    filter: 3,                          Aktivierter Filter, Nur Lesson mit ø Note >= 3
    language: "de",                     Sprache, Texte in de.json
    chapters: [                         Liste der Kapitel
        {                    
            nr: 1,                      Kapitel-Nummer; Titel->1cc000, Desc->2cc000
            lessons: [                  Lessons des Kapitels
                {
                    nr: 1,              Nummer der Lesson; Name->1cclll, Desc->2cclll
                    lastRun: {
                        date: "Datum"   Zuletzt gestartet
                        rating: 3       Letzte Note
                    },
                    ratingNote: 9,      Rating Note (Summe aller Ratings)
                    ratingCount: 3      Rating Anzahl (Note / Anzahl = Durchschnitt)
                },
                { ... }, ...
            ]
        },
        { ... }, ...
    ]
}

## Languages

de.json
{
    type: "language",                   Typ, wird benötigt um dies als Sprachpaket zu erkennen
    name: "deutsch",
    texts: [
        { nr: 1, text: "Text in deutsch" },
        { nr: 2, text: "Noch ein Text" },
        ...
    ]
}


