\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \minor \time 2/4 \tempoMarkup "Andante"
  e8^\partVi a4 gis8
  e c'4 h8
  e e,4 gis8
  a a, r4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
