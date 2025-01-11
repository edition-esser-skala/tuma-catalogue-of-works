\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key f \major \time 4/4 \tempoMarkup "[no tempo]"
  c'8^\part "bc" c, r16 c c'16. c32 b8 b, r16 b b'16. b32
  a8[ a,]
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8) }
}
