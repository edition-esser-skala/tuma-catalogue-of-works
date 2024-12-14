\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 3/8 \tempoMarkup "Allegro"
  e'8^\partVi a, gis
  a e4
  a16 h cis8 h
  \grace h cis4.
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
