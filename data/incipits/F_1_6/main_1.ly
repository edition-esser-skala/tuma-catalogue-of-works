\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4 \tempoMarkup "Andante"
  c'4^\partVi c, r8 e'16 f g32 f e d c b a g \gotoBar "4"
  \clef bass \autoBeamOff c,4^\partBs c, r g'8 g
  a d h4\trill c g8 g
}

text = \lyricmode {
  \skips 12
  Al -- ma Re -- dem --
  pto -- ris ma -- ter, Re -- "dem -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8) }
}

