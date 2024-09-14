\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 2/2 \autoBeamOff
  h'2^\partSc c
  c h
  c1
  c2 e
  d1
  e
  e2 e
  d
}

text = \lyricmode {
  Pan -- ge
  lin -- _
  gua
  glo -- ri --
  o --
  si
  cor -- po --
  ris
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
