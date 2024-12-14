\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key g \minor \time 4/4 \autoBeamOff
  d'2.^\partSc b4
  g2 r4 es'~
  es d2 c4~
  c h c c
}

text = \lyricmode {
  Ky -- ri --
  e e --
  lei -- _
  _ son, "e -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
