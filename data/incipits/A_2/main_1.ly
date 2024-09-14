\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 2/2 \autoBeamOff
  g'2^\partSc c
  h e4 d
  c h a c
  h2 c
}

text = \lyricmode {
  Ky -- ri --
  e e -- _
  lei -- _ _ _
  son, "e -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
