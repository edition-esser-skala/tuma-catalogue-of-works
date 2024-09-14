\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key f \major \time 2/2 \autoBeamOff
  a'1^\partSc
  a
  b2 c
  b1
  a2 a~
  a a
}

text = \lyricmode {
  Tra --
  di --
  de -- runt
  me
  in ma --
  nus
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
