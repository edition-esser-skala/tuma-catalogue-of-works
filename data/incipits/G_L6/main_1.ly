\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key d \major \time 4/4 \tempoMarkup "Adagio"
  d8^\partOrg r r4 cis r
  d r a'
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
