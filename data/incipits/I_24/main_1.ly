\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 3/4 \tempoMarkup "Adagio"
  c'2.^\partVii
  d
  e2 g4~
  g fis8 e f4~
  f e8 d e4~
  e d8 c d4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
