\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff
  e'4.^\partSc e8 e[ c] h[ a16 g]
  fis2 g4 r
  r h8. h16 h4 a8[ g]
  fis2 g4 r
}

text = \lyricmode {
  Ky -- ri -- e e --
  lei -- son,
  Ky -- ri -- e e --
  lei -- son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
