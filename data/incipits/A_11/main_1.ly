\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \twotwotime \key e \minor \time 2/2 \tempoMarkup "Andante" \autoBeamOff
  h'2^\partSc c
  h e~
  e d
  c1
  h2 e %5
}

text = \lyricmode {
  Ky -- ri --
  e e --
  _
  lei --
  son, "e -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
