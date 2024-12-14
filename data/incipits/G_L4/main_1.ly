\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key g \major \time 3/4 \tempoMarkup "Larghetto"
  g'4^\partOrg r8 g, a h
  c4 r8 c' h a
  h4 r8
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
