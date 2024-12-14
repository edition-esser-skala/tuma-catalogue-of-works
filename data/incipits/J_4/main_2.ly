\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 2/4 \tempoMarkup "Allegro"
  \partial 8 e'8^\partVi gis,( a) r fis
  \grace gis16 fis8( e) r d'
  \grace e16 d8( cis) r fis
  gis,( a) e cis'
  \grace cis h4 r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
