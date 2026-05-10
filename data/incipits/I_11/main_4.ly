\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \dorian \time 2/2 \tempoMarkup "Allegro assai"
  d'2^\partVi f4 a
  d2 d,
  e4 b' a g
  f e d d,
  e b' a g
  f e d2
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
