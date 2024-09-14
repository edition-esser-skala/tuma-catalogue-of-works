\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key f \major \time 4/4 \autoBeamOff
  f2^\partSc g4 g
  a2. f4~
  f b2 b4
  a2. a4
}

text = \lyricmode {
  Ky -- _ ri --
  e e --
  le -- i --
  son, "e -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
