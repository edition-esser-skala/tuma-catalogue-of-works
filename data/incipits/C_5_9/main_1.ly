\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key f \major \time 2/2 \autoBeamOff \tempoMarkup "Allegro"
  c'2.^\partSc c4
  b2 g
  a2. a4
  g2 g
}

text = \lyricmode {
  Se -- ni --
  o -- res
  po -- pu --
  li
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
