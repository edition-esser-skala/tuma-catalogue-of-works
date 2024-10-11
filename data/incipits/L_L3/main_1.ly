\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 4/4 \tempoMarkup "[no tempo]"
  d'4^\partVi \tuplet 3/2 8 { d16 fis e e[ g fis] } fis4 \tuplet 3/2 8 { fis16 a g g[ h a] }
  a h a fis \grace a8 g4\trill fis8
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
