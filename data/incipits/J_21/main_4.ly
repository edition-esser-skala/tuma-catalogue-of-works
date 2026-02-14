\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 2/4 \tempoMarkup "Capricio"
  r8^\partVi a' \grace h a8. gis32 a
  e'8 a, \grace h a8. gis32 a
  fis'8 a, \grace h a8. gis32 a
  \tuplet 3/2 4 { e'8 d cis d cis h }
}


\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
}
