\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \major \time 3/4 \autoBeamOff
  a'4.^\partSc a8 d4
  d4. cis8 cis4
  d d c
  h2 r4
}

text = \lyricmode {
  Ky -- ri -- e,
  Ky -- ri -- e
  e -- lei -- _
  son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
