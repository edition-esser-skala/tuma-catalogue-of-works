\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 2/2 \tempoMarkup "Staffada"
  r4^\partVi f' b2~
  b4 a8 g f2~
  f4 es8 d c4 f
  d b r es,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
