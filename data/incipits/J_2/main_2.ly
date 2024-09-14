\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 3/4 \tempoMarkup "Allegro"
  a'4^\partVi a'16 gis fis e d8 cis
  h a a'16 gis fis e d8 cis
  h a e' e, fis4
  d'8 d, e4 cis'8 cis,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
