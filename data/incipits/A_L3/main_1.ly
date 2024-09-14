\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key c \major \time 4/4
  c4 r c r
  c r d8 g, r g
  c4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
