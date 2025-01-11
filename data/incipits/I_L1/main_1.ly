\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key d \minor \time 4/4 \tempoMarkup "[no tempo]"
  d4^\part "bc" f8 d a'4 cis,
  d f8 d g4 g,4*1/2 r16 a
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
