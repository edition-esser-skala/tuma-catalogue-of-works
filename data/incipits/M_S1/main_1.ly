\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4 \tempoMarkup "Moderato"
  \partial 4 r16^\partVi c' e f g8 g g4 c8 c c8. g16
   a16. f32 g16. e32
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
