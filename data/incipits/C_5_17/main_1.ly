\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key b \major \time 2/2 \autoBeamOff \tempoMarkup "Allegretto"
  b'1^\partSc
  b
  a
  d2 d
}

text = \lyricmode {
  Je --
  sum
  tra --
  di -- dit
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
