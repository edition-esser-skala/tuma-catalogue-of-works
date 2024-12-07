\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 3/8 \tempoMarkup "Allegro"
  d'8^\partVi a' a,
  d d, r
  a'' a, cis
  d d, r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
