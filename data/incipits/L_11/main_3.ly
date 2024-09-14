\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key f \major \time 4/4 \tempoMarkup "Andante"
  r2^\partVi r8 c''16 b a8 r
  r2 r8 g16 f e8 r
  r2 r4 r8 f16 g,
  g4 r8
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
