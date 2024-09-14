\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key es \major \time 4/4 \autoBeamOff
  r4 b'8^\partSc es d b c4
  b as g8 b es[ d16 c]
  f8 b, \grace d c4 b r
}

text = \lyricmode {
  Ky -- ri -- e e -- lei --
  son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
