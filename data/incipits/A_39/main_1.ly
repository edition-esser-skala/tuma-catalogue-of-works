\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \major \time 4/4 \autoBeamOff
  a'4.^\partSc a8 a4 r
  r8 a a[ d] d4 h
  a a8 a h2
  ais4 r r2
}

text = \lyricmode {
  Ky -- ri -- e
  e -- lei -- son, e --
  lei -- son, e -- lei --
  son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
