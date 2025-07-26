\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 3/8 \tempoMarkup "Fuga"
  c8^\partVii c' c
  c h16 c d8~
  d c16 d e8~
  e d16 e f8~
  f e16 f g8
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
