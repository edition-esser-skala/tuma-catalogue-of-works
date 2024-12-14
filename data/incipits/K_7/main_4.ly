\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 6/8 \tempoMarkup "Gigue"
  \partial 8 e8^\partVi a8. h16 a8 cis e e,
  a8. e16 cis8 a4 a''8
  a gis fis \grace fis e4 fis8
  fis e d cis4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
