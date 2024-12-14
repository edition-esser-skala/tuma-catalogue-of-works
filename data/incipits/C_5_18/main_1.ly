\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key b \major \time 2/2 \autoBeamOff
  b'2^\partSc b4 c
  d2 c
  b d4 d
  b1
}

text = \lyricmode {
  Ca -- li -- ga --
  ve -- runt
  o -- cu -- li
  "me -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
