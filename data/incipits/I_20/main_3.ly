\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4 \tempoMarkup "Allegro"
  c'16^\part "clno 1" g c d e e d c d g, d' e f f e d
  e8 g c2 h4
  c8 g16 f e f g a f e d e f e f g
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
