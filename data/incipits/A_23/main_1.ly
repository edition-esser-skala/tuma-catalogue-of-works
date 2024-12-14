\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key g \major \time 4/4 \autoBeamOff
  r4 d'2^\partSc d4
  d2 r
  r4 d d8[ cis] c4
  h4. h8 a2
}

text = \lyricmode {
  Ky -- ri --
  e
  e --
  lei -- _
  son, e -- "lei -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
