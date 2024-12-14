\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 2/4 \tempoMarkup "Allegro"
  r8^\partVi d' d16 cis d8
  r a' a16 gis a8
  r d d16 cis d8
  \grace d16 cis8[ h a g]
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
