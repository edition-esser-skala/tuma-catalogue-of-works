\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key es \major \time 3/4 \tempoMarkup "Larghetto"
  es4^\partOrg r8 es es d
  c4 r8 c c b
  as2 b4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
