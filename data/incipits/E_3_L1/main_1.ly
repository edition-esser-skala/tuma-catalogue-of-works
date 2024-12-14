\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 4/4 \tempoMarkup "Allegro"
  r8^\partVi e' e e a gis16 fis e d cis h
  cis e a,8~ a16 d cis h
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
