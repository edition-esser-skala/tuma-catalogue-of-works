\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key f \minor \time 3/8 \tempoMarkup "Amoroso"
  r8^\partVi as' f
  c'16.\trill b32 c8 r
  as16.\trill g32 as8 as'~
  as g b
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8) }
}
