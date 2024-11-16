\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key h \minor \time 3/2 \tempoMarkup "Larghetto"
  h2^\partOrg h' r
  h, h' r
  e, d
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
