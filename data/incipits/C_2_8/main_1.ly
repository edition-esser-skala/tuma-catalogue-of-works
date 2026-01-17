\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 2/2 \autoBeamOff \tempoMarkup "[no tempo]"
  h'2^\partSc c
  c h
  c1
  c2 e
  d1
  e
}

text = \lyricmode {
  Pan -- ge
  lin -- _
  gua
  glo -- ri --
  o --
  si
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
