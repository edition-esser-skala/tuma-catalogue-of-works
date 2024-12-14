\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \twofourtime \key a \major \time 2/4 \tempoMarkup "Allegro"
  a'8^\partVi e a e
  a a, r cis'16 d
  e8 e, \grace e' d4
  cis8 a' a, cis16 d
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
