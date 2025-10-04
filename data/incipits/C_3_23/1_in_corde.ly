\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Recitativo" \autoBeamOff
    r4 g' c c8 d
    e4 e r8 c c g
    b4. b8 a4 h8 c
    c16 g g8 r4 r h
    e e8 e h4 c8 d
  }
}

SopranoLyrics = \lyricmode {
  In cor -- de Ger --
  tru -- dis in -- ve -- ni --
  e -- tis me, di -- cit
  Do -- mi -- nus: com --
  pla -- cu -- it si -- bi in
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Recitativo"
    c1
    c~
    c2 f
    r4 g gis2~
    gis1
  }
}

BassFigures = \figuremode {
  r1
  r
  <7->
  r4 <5> <6>2
  r1
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
