\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4 \tempoMarkup "Andante ô Larghetto"
  r8 e'^\partVi c g r g' e c
  r16 g' g a g c g8 \gotoBar "7"
    \clef soprano \autoBeamOff r8^\partSs c, c g
  r e' e c r g c d16 e
  c8. h16 h4
}

text = \lyricmode {
  \skips 12
  Ve -- ni -- te,
  ve -- ni -- te, ve -- ni -- te mor --
  ta -- li -- um
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
