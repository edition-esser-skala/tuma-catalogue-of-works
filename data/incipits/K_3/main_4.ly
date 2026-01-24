\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \major \time 2/4 \tempoMarkup "Allegretto"
  d'4^\partVi d
  d d
  d8 g d4\trill
  d8 a' d,4\trill
  d8 h' d,4\trill
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
