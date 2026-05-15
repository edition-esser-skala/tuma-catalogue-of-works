\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \twotwotime \key c \major \time 2/2 \tempoMarkup "Bourlesque"
  g'2^\partFl e'~
  e4 d8 c d2
  g, f'~
  f4 e8 d e2
  a4 a~ a8 h c a
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
