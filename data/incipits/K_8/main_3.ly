\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 3/4 \tempoMarkup "Menuet"
  a'4^\partVi \tuplet 3/2 4 { cis8 h a } e'4
  d \grace d cis2
  a,8. h16 a4 a'
  \grace h8 a4\trill gis2
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
