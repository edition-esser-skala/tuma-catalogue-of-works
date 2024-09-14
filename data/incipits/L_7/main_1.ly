\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 4/4 \tempoMarkup "Intrada"
  a''8^\partVi e4 fis16 gis a a, gis a a' a, gis a
  d8 cis4 d16 e fis a, gis a e' a, gis a
  d8 cis cis16 e fis gis a4 a16 gis a h
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
