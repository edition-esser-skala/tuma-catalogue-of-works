\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  e'1^\partSc
  e2 r
  c1
  c2 r
  a1
  gis2
}

text = \lyricmode {
  San --
  ctus,
  san --
  ctus,
  san --
  ctus
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
