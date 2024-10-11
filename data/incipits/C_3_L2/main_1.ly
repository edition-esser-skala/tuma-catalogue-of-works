\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4 \tempoMarkup "[no tempo]"
  c'16.^\partVi g32 f16. g32 e16. c32 e16. g32 c16. g32 f16. g32 e16. c32 e16. g32
  c16. c32 e16. e32 g16. g32 a16. h32
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
}
