\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \minor \time 3/2 \autoBeamOff
  d'2.^\partSc e4 f2
  e d cis
  d a r
  b4 g f2 e
}

text = \lyricmode {
  Ky -- ri -- e
  e -- lei -- _
  _ son,
  e -- _ lei -- \hy
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
