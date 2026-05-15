\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \twotwotime \key f \major \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
  c'1^\partSc
  c2 c
  c1
  c2 c
  b1
  a2 b
  c d
}

text = \lyricmode {
  Tri --
  stis est
  a --
  ni -- ma
  me --
  a us --
  que ad
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
