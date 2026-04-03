\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Largo"
  c'1~^\partSc
  c2 h
  d1~
  d2 c
  e1~
  e2 dis
  e4 h8 h c4 c
}

text = \lyricmode {
  San --
  ctus,
  san --
  ctus,
  san --
  ctus
  Do -- mi -- nus De -- us,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
