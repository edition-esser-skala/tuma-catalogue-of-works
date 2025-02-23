\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key e \minor \time 3/4 \tempoMarkup "Larghetto"
  e'4^\partVi c h
  r8 c h c \grace c h4 \gotoBar "11"
  \clef soprano \autoBeamOff e4^\partSc c h
  r8 c h[ c] h4
}

text = \lyricmode {
  \skips 7
  Ky -- ri -- e
  e -- lei -- son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8) }
}
