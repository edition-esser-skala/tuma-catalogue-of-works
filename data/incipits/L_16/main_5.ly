\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key es \major \time 3/4 \tempoMarkup "Andante"
  \partial 4 es'8.^\partVi g,16 g8 f f4 as
  \grace as g2 b'8 es,16 d
  d8 c c4 c'
  \grace es,4 d2
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
