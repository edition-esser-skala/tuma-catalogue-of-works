\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 2/2 \tempoMarkup "Boure"
  \partial 4 e'4^\partVi \grace d8 cis4 h8 a gis4 d'
  \grace d4 cis2. e4
  \grace d8 cis4 h8 a d4 cis
  cis h r e
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
