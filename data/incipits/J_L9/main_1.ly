\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 2/4 \tempoMarkup "[no tempo]"
  c'8^\partVi \tuplet 3/2 8 { a'16 g f } g8 \tuplet 3/2 8 { f16 e d }
  e16. c32 h16.\trill c32 g16. c32 e,16. c'32
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
