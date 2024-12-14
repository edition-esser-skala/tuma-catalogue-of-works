\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key f \major \time 6/8 \tempoMarkup "Andante"
  \partial 8 c'8^\partVi d8. f16 e8 f a f,
  g a b a g16 f c'8
  d8. f16 e8 f a g,
  a16 h \grace c8 h4 c
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
