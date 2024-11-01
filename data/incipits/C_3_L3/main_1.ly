\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key c \major \time 4/4 \tempoMarkup "Adagio"
  c8^\partOrg c c c c c c c
  c c c c
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
