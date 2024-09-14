\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff
  g'4.^\partSc g8 c4 c
  c8[ h16 a] h8[ g] a4 d
  d8[ g,] c c c4 h
  c e d4. e8
}

text = \lyricmode {
  Ky -- ri -- e e --
  lei -- _ son, e --
  lei -- son, e -- lei -- _
  son, e -- lei -- \hy
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
