\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 4/4 \tempoMarkup "Allegro"
  a8^\partVi e'' e e cis e e e
  h e e e a, e' e e
  gis, e' e e fis16 e d e fis g fis g
  fis e d e fis g fis g fis e d e fis e fis gis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
