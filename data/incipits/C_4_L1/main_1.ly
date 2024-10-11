\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 3/4 \tempoMarkup "Allegro"
  d'16^\partVi e fis e d e fis e d e fis e
  d4 a' r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
