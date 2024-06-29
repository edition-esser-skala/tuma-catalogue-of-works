\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \twotwotime \key f \major \time 2/2 \tempoMarkup "Allabreve"
  f'2^\partVi e
  r4 d d d
  d c8 b c2~
  c4 b8 a b4 g
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
