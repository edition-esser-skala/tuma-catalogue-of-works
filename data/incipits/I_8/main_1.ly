\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \twofourtime \key h \minor \time 2/4 \tempoMarkup "Larghetto"
  \partial 8 fis8^\partVi h16( ais) h8 h16( ais) h8
  r h' h,4
  cis16 h cis8~ cis16 cis d e
  d8 h' h,4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
