\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \major \time 2/2 \autoBeamOff
  a'1^\partSc
  a2 a
  d1
  d2 d
  cis4 d e d
}

text = \lyricmode {
  Iu --
  stus ut
  pal --
  ma flo --
  re -- _ _ \hy
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
