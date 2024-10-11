\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key a \minor \time 3/4 \autoBeamOff \tempoMarkup "Larghetto"
  r4^\partSs e'2~
  e2.~
  e4 d8[ c] h[ a]
  gis[ fis] e4 a
}

text = \lyricmode {
  Sal --

  ve Re --
  gi -- na, "ma -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
