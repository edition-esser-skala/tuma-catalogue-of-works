\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \major \time 3/8 \tempoMarkup "Allegro"
  d'8^\partVi g,4
  c8 fis,4
  e8 a g
  fis d r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
