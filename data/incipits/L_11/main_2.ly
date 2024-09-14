\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \minor \time 6/8 \tempoMarkup "Presto"
  d'8^\partVi c b a g f
  b a g f e f
  a g f e d cis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
