\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 4/4 \tempoMarkup "Allegro"
  a''8^\partVi e fis d cis16 a, h cis d e fis gis
  a8 e' fis d cis16 a, h cis d e fis gis
  a8 e' d cis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
