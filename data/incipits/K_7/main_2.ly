\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \twofourtime \key d \minor \time 2/4 \tempoMarkup "Allegretto"
  \partial 8 d'8^\partVi cis[ d e f]
  e a, r d16 c
  b( a g) d'-! \grace d8 c8. b16
  a( g f) a \grace c8 b8. a16
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
