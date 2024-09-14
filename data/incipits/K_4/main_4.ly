\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 2/4 \tempoMarkup "Allegretto"
  \partial 8 a'8^\partVi h16 gis a8 e a
  h16 gis a8 r h16 cis
  d8 d e, d'
  d16 h cis8 r cis16 dis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
