\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 3/4 \tempoMarkup "Larghetto"
  e'2.~^\partVi
  e
  d
  d
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
