\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \minor \time 2/4 \tempoMarkup "Allegretto"
  \partial 8 d'8^\partVi g g g f16 es
  d8[ d d es]
  d g,16 a b8 a
  g4 r16 c b c
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
