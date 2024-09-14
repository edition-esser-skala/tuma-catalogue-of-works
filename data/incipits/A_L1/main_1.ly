\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key c \major \time 4/4 \autoBeamOff
  c1
  c'2 h
  a g4 r
  g,1
  g'2
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
