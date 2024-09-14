\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key f \major \time 2/2 \autoBeamOff \tempoMarkup "Allegretto"
  a'1^\partSc
  a2 a
  b a
  b1
}

text = \lyricmode {
  In
  mon -- te
  o -- li --
  "ve -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
