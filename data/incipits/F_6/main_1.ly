\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \minor \time 4/4 \tempoMarkup "Adagio"
  b'8^\partVi d16 b b8 d16 b a8 d16 a a8 d16 a
  g8 d'16 g, g8 c
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
