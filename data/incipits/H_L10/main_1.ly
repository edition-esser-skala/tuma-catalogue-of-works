\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key c \major \time 4/4 \tempoMarkup "[no tempo]"
  c8^\partOrg c c c c c c c
  g' g g g g g g g
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
