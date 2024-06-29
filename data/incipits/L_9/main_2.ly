\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \twofourtime \key a \major \time 2/4 \tempoMarkup "[no tempo]"
  \partial 8 a'16^\partVi gis a8 a, r h'16 a
  h8 e, r cis'16 h
  cis8 a gis a
  h4 r8 cis16 h
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
