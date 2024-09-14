\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  e'2.^\partSc e4
  e r r2
  r r4 g,~
  g4. g8 a4 r
}

text = \lyricmode {
  Ky -- ri -- e,

  Ky --
  ri -- e
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
