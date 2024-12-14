\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 3/4 \tempoMarkup "[no tempo]"
  \tuplet 3/2 4 { c'8^\partVi d e } d4 g,
  f\trill e g'
  \tuplet 3/2 4 { f8 g a } d,4 c\trill
  h g g'
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
