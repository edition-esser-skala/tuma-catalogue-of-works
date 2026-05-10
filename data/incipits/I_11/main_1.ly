\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \dorian \time 4/4 \tempoMarkup "Adagio"
  d'2^\partVii \fC e~^\partVi
  e16 d a16. g32 f16. d32 f'16. d32 g2~
  g16 f c16. b32 a16. f32 a'16. f32 b2
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
}
