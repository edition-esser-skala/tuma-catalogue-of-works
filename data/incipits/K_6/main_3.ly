\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key f \major \time 3/4 \tempoMarkup "[no tempo]"
  f4-!^\partVi a-! b-!
  c-! d-! e-!
  f-! g-! a-!
  b8. g16 g4( a)
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
