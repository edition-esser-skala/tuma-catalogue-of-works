\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \twotwotime \key f \major \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
  c'1^\partSc
  c
  c
  c2 c
  b1
  a
}

text = \lyricmode {
  Ec --
  ce
  vi --
  di -- mus
  e --
  um
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
