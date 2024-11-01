\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key c \major \time 4/4 \tempoMarkup "Andante"
  c'8^\partOrg h a g f e d e16 f
  g8 e f d16 f
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
