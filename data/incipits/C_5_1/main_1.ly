\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key f \major \time 2/2 \autoBeamOff \tempoMarkup "Allegretto"
  a'1^\partSc
  a2 a
  b a
  b1
  a2 c
  c1
  c2 c
  c h
  c r
}

text = \lyricmode {
  In
  mon -- te
  O -- li --
  ve --
  ti o --
  ra --
  vit ad
  Pa -- _
  trem:
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
