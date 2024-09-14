\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4 \tempoMarkup ""
  c'8.^\partVi \tuplet 3/2 16 { g32 a h } c16. c32 e16. 32 c4 r
  e8. \tuplet 3/2 16 { c32 d e } e16. e32 g16. g32 c,4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
}
