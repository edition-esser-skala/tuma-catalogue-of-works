\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef bass
  \key f \major \time 4/4 \autoBeamOff
  g\breve*1/8^\partBc a g g \bar "||"
  \clef soprano a'1^\partSc
  a2 g~
  g f~
  f e
  f
}

text = \lyricmode {
  Re -- _ qui -- em
  ae --
  ter -- _
  _
  _
  nam
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
