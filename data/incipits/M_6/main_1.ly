\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 3/8 \tempoMarkup "Allegro"
  b'8^\partVi b, c
  b'' b b
  b, d, es
  b'' b b
  b, f g
  b' b b
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
