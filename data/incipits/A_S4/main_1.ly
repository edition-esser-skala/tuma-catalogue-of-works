\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key f \major \time 2/4 \autoBeamOff
  c'4^\partSc a
  b16[ c] d4 c8
  b16[ c] d4 c8
  b[ a] g4\trill
  f8
}

text = \lyricmode {
  Ky -- ri --
  e __ _ _
  _ _ e --
  lei -- _
  son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
