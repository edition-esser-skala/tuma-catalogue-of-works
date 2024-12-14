\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \minor \time 3/4 \tempoMarkup "Adagio"
  d'4^\partVii cis a
  c h g
  b a f
  g8 b a g f e
  f e d4 r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
