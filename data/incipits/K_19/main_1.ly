\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 4/4 \tempoMarkup "Adagio"
  a''8.^\partVi a16 a8 a, d2
  \tuplet 3/2 8 { fis,16 h cis d[ cis h] fis' h, cis d[ cis h] } gis'8. gis16 h8 d,
  cis2
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
