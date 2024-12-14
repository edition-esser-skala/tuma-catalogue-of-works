\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  r4 e'2^\partSc e4
  e1
  r4 e e2~
  e4 d8 d d2
}

text = \lyricmode {
  Ky -- ri --
  e
  e -- lei --
  son, e -- "lei -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
