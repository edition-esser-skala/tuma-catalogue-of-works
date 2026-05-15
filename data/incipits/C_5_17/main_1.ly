\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \twotwotime \key f \major \time 2/2 \tempoMarkup "Allegretto" \autoBeamOff
  b'1^\partSc
  b
  a
  d2 d
  d1
  c2 c
}

text = \lyricmode {
  Je --
  sum
  tra --
  di -- dit
  im --
  _ "pi -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
