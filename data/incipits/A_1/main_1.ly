\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 2/2 \autoBeamOff
  g'2.^\partSc g4
  a2 c
  h4 c d2
  g,2 c
}

text = \lyricmode {
  Ky -- ri --
  e e --
  lei -- _ _
  son, "e -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
