\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key f \major \time 4/4 \tempoMarkup "Andante"
  f8^\partOrg a f e d g d e
  f f, f' e
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
