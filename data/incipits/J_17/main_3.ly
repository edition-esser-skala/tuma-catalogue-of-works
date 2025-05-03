\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 3/8 \tempoMarkup "Allegro"
  d'8^\partVi a' a,
  d d, r
  a'' a, cis
  d d, r
  \tuplet 3/2 8 { h''16 a g a[ g fis] } g dis
    e8 e, e'
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
