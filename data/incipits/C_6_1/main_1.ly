\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 2/2 \autoBeamOff \tempoMarkup "Alla capella · Tempo moderato"
  c'1~^\partSc
  c2 c
  c1
  c2 c
  c h
  e e
  d4 c d2
}

text = \lyricmode {
  Ex --
  au --
  di --
  vit de
  tem -- plo
  san -- cto
  su -- _ o
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
