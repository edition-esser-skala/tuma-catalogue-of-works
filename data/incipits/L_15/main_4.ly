\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \minor \time 2/4 \tempoMarkup "Allegro"
  \partial 8 g'16^\partVi a b4 r8 b16 c
  d4 r8 g
  \grace g16 fis8[ g b a]
  \grace a g4 r8
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
