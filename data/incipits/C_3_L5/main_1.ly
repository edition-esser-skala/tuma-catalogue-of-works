\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key b \major \time 4/4 \tempoMarkup "Larghetto"
  b8^\partOrg b b b b b b b
  b b b b
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
