\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key a \minor \time 3/2 \autoBeamOff
  c'1^\partSc c2
  c r r
  r a1
  gis2. a4 h2
  e, a g
}

text = \lyricmode {
  Ky -- ri --
  e
  e --
  lei -- _ _
  _ son, "e-"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
