\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \minor \time 2/2 \autoBeamOff \tempoMarkup "[no tempo]"
  d'\breve*1/2^\partSc
  e1
  f2. e4
  d c d2
  g, c~
  c4 b b
}

text = \lyricmode {
  Ky -- 
  ri -- 
  e e --
  _ _ lei -- 
  _ _
  _ son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
