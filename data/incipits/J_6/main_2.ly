\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key f \major \time 4/4 \tempoMarkup "Allegro"
  f2^\partVii d'4. c8
  b a g4. a16 b c8 b
  a g f4. g16 a b8 a
  g f e4. f16 g a8 g
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
