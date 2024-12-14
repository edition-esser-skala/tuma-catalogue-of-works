\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4 \tempoMarkup "Allegro"
  r8^\partVi g' g g c16 h c4 d16 e
  d c d4 e16 f e f g8 f e
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
