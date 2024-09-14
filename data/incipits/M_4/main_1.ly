\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key f \minor \time 3/4 \tempoMarkup "Mesto"
  r8^\markup \remark "cemb" c f as g f
  g4 c,4. c'16 b
  as4 f f'~
  f e2
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
