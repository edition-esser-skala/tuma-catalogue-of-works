\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \major \time 4/4 \tempoMarkup "[no tempo]"
  \partial 8 d'8^\partVi g g g d'16 h g8 d d g16 d
  e8 d r g16 h, \grace d16 c8[ h]
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
