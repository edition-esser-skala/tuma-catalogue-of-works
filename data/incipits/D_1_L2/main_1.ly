\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key f \major \time 4/4 \tempoMarkup "[no tempo]"
  f,4^\partOrg b8 a g c f,4
  f'8 e f c f, a16 b c8. b16
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
