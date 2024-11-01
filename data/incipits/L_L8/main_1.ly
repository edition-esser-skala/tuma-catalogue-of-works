\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 4/4 \tempoMarkup "[no tempo]"
  R1^\partVi
  d8 d'16 cis cis8 h16 a a8 g16 fis g fis g a
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
