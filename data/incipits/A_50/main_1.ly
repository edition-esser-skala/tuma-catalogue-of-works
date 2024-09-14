\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key b \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
  r4 g'2^\partSc f4
  b2. a4
  d2. c4~
  c8[ b16 a] b8[ a16 g] a4. b8
  c[ b a g] f2
}

text = \lyricmode {
  Ky -- ri --
  e e --
  lei -- _
  _ _ _
  _ son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
