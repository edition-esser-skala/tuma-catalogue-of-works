\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 3/4 \tempoMarkup "[no tempo]"
  c'8^\partVi e g4 g
  g2 e8 c
  h d f,4 f
  f2 e4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
