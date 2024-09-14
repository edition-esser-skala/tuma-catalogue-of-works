\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 3/4 \tempoMarkup "Largo"
  r4^\partVi e a
  \grace h8 a4\trill gis r
  r e cis'
  \grace d8 cis4\trill h r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
