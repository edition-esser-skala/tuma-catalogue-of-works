\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4 \tempoMarkup "Allegro"
  c'16^\part "clno 1" e d c c e d c g'8 g h a16 h
  c8 h16 a g8 f e16 d e f e f g a
  d, c d e
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
