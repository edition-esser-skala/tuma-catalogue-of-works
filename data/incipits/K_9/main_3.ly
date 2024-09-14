\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 3/8 \tempoMarkup "Presto"
  f'8^\partVi g f
  b,16 a b c d8
  c16 b c d es8
  d c4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
