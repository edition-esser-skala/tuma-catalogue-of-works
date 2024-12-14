\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key b \major \time 4/4 \tempoMarkup "Andante"
  b8^\partOrg b c f b, b b b
  a a a a
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
