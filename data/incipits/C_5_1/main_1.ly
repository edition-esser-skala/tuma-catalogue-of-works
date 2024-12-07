\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 2/2 \autoBeamOff
  c'1~^\partSc
  c2 c
  c1
  c2 c
  c h
}

text = \lyricmode {
  Ex --
  au --
  di --
  vit de
  tem -- plo
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
