\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key b \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro moderato"
  b'4^\partSc c\trill d es\trill
  \tuplet 3/2 8 { f16[ es d] d[ c b] } es32[ c16. a32 f16.] d'8 b r4
  R1
  r8 d c f f8.[ e32 f] \tuplet 3/2 8 { g16[ f e] d[ c b] }
}

text = \lyricmode {
  Ky -- ri -- e e --
  lei -- _ _ _ son,

  e -- lei -- son, e -- _ \hy
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8) }
}
