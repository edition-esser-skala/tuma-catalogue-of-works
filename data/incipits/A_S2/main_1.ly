\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key g \major \time 4/4 \autoBeamOff
  d'2^\partSc e
  c d
  h c
  a h4 a
}

text = \lyricmode {
  Ky -- ri --
  e e --
  lei -- _
  _ _ \hy
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
