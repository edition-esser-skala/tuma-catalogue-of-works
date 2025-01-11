\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \minor \time 4/4 \tempoMarkup "[no tempo]"
  a''16^\partVi d, cis d \tuplet 3/2 8 { g a b } a8 cis,16 d d8 f,16 e e d
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
