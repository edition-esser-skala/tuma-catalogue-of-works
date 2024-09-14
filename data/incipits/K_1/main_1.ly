\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \major \time 4/4 \tempoMarkup "Allegro assai"
  g''4^\partVi g, r8 g g g
  g4 g, r8 g' g g
  g, h' h h g, d'' d d
  g,, g'' g g fis16 g a g fis e d c
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
