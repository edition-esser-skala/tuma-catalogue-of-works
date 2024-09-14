\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key e \minor \time 3/4 \tempoMarkup "Larghetto"
  r4 e'8^\partVi dis e4
  r e8 dis e4
  r e8 dis e4
  dis h'8 g a fis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
