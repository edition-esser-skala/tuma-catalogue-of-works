\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4 \tempoMarkup "Adagio un poco"
  r16^\partVi c' d c d c e c g'32 a g16 r c, e c g' e \gotoBar "3"
  e, c'' a f \grace e8 d4\trill c16 g g e \autoBeamOff c8 \clef soprano c'^\partSs
  c g r e' e c d e
}

text = \lyricmode {
  \skips 25
  Suc --
  cur -- re Re -- gi -- na tu -- is
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
}
