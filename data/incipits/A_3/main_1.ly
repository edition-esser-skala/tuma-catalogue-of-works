\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key f \major \time 4/4 \autoBeamOff
  f,2^\partTc c'
  a4 d c f~
  f e \clef soprano f2^\partSc
  c' a4 d
}

text = \lyricmode {
  Ky -- ri --
  e e -- lei -- _
  _ Ky --
  ri -- e "e-"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
