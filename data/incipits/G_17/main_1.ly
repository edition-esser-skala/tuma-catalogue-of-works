\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key b \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  b'4.^\partSc b8 b4 b
  h2 c4 c
  a4. a8 b4 b8 b
  b4 es a, r
}

text = \lyricmode {
  Ky -- ri -- e e --
  lei -- son, Chri --
  ste e -- lei -- son, e --
  lei -- _ son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
