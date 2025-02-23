\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key f \major \time 4/2 \tempoMarkup "[no tempo]" \autoBeamOff
    \set Staff.timeSignatureFraction = 2/2
  f1 g
  b a2 a
  c1 f,2 f
  a2. g8[ f] g1~
}

text = \lyricmode {
  A -- ve,
  a -- ve Re --
  gi -- na coe --
  lo -- _ \hy
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
