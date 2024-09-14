\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 3/8 \tempoMarkup "Allegro"
  \partial 8 b'8^\partVii b b, b'
  b4 d16 es
  f8 f, es'
  \grace f16 es8\trill d g,16[ a]
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
