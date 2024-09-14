\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key es \major \time 2/4 \tempoMarkup "Allegro"
  \partial 8 b'8^\partVi c es r as,
  \grace as g4 r8 b
  c es r as
  \grace as g4 r8
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
