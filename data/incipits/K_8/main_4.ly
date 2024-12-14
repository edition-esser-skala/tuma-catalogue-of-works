\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 2/4 \tempoMarkup "Allegro"
  \partial 8 e8^\partVi \grace e fis4. gis8
  \grace gis a4. cis8
  fis,[ d' cis h]
  cis16 h a8 r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
