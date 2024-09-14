\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key f \major \time 3/8 \tempoMarkup "Allegro"
  \partial 8 c''8^\partVi a f e
  \grace e f4 c8
  \tuplet 3/2 8 { d16 e f } c8[ b]
  \grace c16 b8 a f
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
