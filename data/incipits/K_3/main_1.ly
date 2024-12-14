\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \major \time 2/4 \tempoMarkup "Allegro"
  \partial 8 g''8^\partVi h, a r g'
  h, a r g'
  fis16 g e fis d e c d
  h8 g r d'
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
