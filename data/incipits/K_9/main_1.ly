\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 4/4 \tempoMarkup "Allegro"
  b''16^\partVi f g es f d es c d8 b, b b
  b'16 f g es f d es c d8 b b b'
  \grace b a4 a16 \grace b32 c16 f,8 b4 b16 \grace c32 d16 f,8
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
