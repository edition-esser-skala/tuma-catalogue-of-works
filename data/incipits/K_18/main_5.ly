\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \minor \time 4/4 \tempoMarkup "Adagio"
  d'8^\partVi es r r16 c c8 d r r16 b
  b8 c r r16 a a8 b r r16 g
  g8 as r g fis16 es' d8 fis,16 es' d8
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
