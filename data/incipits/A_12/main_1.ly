\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 2/2 \autoBeamOff
  g'2^\partSc a
  g c~
  c h
  a1
}

text = \lyricmode {
  Ky -- ri --
  e e --
  _
  "lei -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
