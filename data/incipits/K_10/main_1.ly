\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key f \major \time 4/4 \tempoMarkup "Allegro"
  \partial 8 f'8^\partVi f,8. \tuplet 3/2 16 { f'32 g a } f,8 e d8. \tuplet 3/2 16 { f'32 g a } d,,8 c
  \kneeBeam b8. \tuplet 3/2 16 { f''32 g a } b,,8 a g b'' \grace c b8. a32 g
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8) }
}
