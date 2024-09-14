\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  d'4.^\partSc d8 d2
  r4 g, e' d8[ c]
  h[ d c h] a[ c h a]
  h4 h~ h8 c d4
}

text = \lyricmode {
  Ky -- ri -- e
  e -- lei -- _
  _ _
  son, Ky -- ri -- e
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
