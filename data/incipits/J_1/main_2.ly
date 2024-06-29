\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \key f \major \time 3/4 \tempoMarkup "Largo"
  c'4^\partVi \tuplet 3/2 4 { f8 g a } g f
  \grace f4 e2 f4
  d8( c) c( f) b,( g')
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
