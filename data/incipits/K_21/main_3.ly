\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 3/4 \tempoMarkup "Manuet"
  \tuplet 3/2 4 { e'8^\partVi d cis } fis4 gis,
  a e2
  fis8 gis a h cis d
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
