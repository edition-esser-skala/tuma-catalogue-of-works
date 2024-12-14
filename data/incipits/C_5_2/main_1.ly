\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key f \major \time 2/2 \autoBeamOff \tempoMarkup "Allegro"
  c'1
  c2 c
  c1
  c2 c
}

text = \lyricmode {
  Tri --
  stis est
  a --
  ni -- ma
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
