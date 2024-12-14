\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4 \tempoMarkup "Andante"
  g''4.^\partVi g8 c,4. c8
  d16 c d e d e f g e d e f e f g a
  d, c d e d e f g c,8 d16 e f4~
  f8 e d4\trill c
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
