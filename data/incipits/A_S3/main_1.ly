\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \major \time 3/4 \autoBeamOff
  a'4.^\partSc a8 a4
  d4. d8 d4
  e8. d16 cis8 h[ a g]
  fis4 d r
}

text = \lyricmode {
  Ky -- ri -- e,
  Ky -- ri -- e,
  Ky -- ri -- e e --
  lei -- son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
