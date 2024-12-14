\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff
  e'8.^\partSc e16 e8 e e e, r e'
  d4 c h a
  h8 c c[ h] c4 r
}

text = \lyricmode {
  Ky -- ri -- e e -- lei -- son, e --
  lei -- _ _ _
  son, e -- lei -- son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
