\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key g \major \time 4/4 \tempoMarkup "[no tempo]"
  g'8^\partOrg a h g a g r4
  g8 a h g
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
