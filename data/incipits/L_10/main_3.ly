\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key f \major \time 3/4 \tempoMarkup "Menuet"
  c''2^\partVi b8 a
  g4 c,2
  d8 c es d f e
  b'4 \grace b a2
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
