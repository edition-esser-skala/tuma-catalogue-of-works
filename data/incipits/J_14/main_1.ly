\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 4/4 \tempoMarkup "Allegro"
  b''8^\partVi f d f b, f d f
  b,4 r r16 b' c d es f g a
  b a b a g a fis a g d e fis g a b g
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
