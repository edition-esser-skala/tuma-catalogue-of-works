\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key es \major \time 2/4 \tempoMarkup "Allegro"
  \partial 8 es8^\partVi b'4 as
  \grace as8 g4 r8 es'
  d c c16 d h8
  c c, r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
