\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 3/4 \tempoMarkup "Larghetto"
  cis'8.^\partVi d16 \grace cis4 h2
  a8 gis a8. h16 cis4
  h8 a h8. cis16 d4
  \grace d8 cis4 h8 cis a4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
