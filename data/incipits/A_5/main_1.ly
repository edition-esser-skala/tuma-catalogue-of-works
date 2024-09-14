\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key c \major \time 2/2 \autoBeamOff
  c1^\partBc
  d
  e4 f g2 \gotoBar "8"
  \clef soprano g'1^\partSc
  a
  h4 c d2~
  d c4 h
}

text = \lyricmode {
  Ky --
  ri --
  e __ _ "e -"
  Ky --
  ri --
  e __ _ _
  _ _
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
