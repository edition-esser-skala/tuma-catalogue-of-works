\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key f \major \time 4/4 \autoBeamOff \tempoMarkup "Larghetto"
  c4.^\partTc d8 b4. c8
  a4. b8 g4. a8
  f4. g8 \clef soprano c'4.^\partSc d8
  b4. c8 a4. b8
}

text = \lyricmode {
  Ky -- ri -- e e --
  lei -- _ son, e --
  lei -- _ Ky -- ri --
  e e -- lei -- \hy
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
