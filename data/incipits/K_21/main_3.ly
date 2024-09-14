\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key es \major \time 2/4 \tempoMarkup "Allegro"
  \partial 8 b'8^\partVi es4 f
  d8. c16 b8 b
  c4 d8 c16 d
  es4 es,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
