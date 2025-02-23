\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key d \major \time 3/4 \tempoMarkup "Allegro"
  d8^\partOrg d d d d d
  d d d d d d
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
