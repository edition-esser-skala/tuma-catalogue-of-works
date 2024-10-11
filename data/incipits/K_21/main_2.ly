\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 2/2 \tempoMarkup "LArgo"
  \partial 4 e'4^\partVi cis h8 a gis4 d'
  cis2. e4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
