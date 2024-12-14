\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key es \major \time 3/4 \tempoMarkup "Menuet"
  b'4^\partVi b2
  es,4 es2
  f4 b, as'
  \grace b8 as4 g r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
