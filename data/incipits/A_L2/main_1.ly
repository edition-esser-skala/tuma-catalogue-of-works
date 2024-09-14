\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key c \major \time 4/4
  c4 r8 e f g r4
  e8 f r4 d8 e r4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
