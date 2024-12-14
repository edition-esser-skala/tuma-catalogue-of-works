\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \minor \time 2/4 \tempoMarkup "Andante"
  \partial 8 g'8^\partVi d' g,4 es'8
  d g, r d'
  es d4 cis8
  d4 r8
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
