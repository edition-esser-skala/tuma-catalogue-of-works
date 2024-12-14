\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 2/4 \tempoMarkup "Vivace"
  a8^\partVi cis16 e a4
  r8 e \grace e16 fis8 e
  r gis16 h d4
  r8 a \grace cis16 h8 a
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
