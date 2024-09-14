\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key c \major \time 4/4
  c8. c'16 h16. a32 g16. f32 e8. a16 g16. f32 e16. d32
  c8
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
