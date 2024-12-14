\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key b \major \time 2/2 \autoBeamOff \tempoMarkup "Allabreve"
   b'2^\partSc d
  f b,
  c a
  b b
}

text = \lyricmode {
  Ky -- ri --
  e e --
  lei -- _
  son, "e -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
