\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff
  r4 c'2^\partSc c4
  c2 r4 g
  c2 c8 h4 a16[ g]
  a8 d, d'4. c4 h16[ a]
}

text = \lyricmode {
  Ky -- ri --
  e e --
  lei -- son, e -- _
  lei -- son, e -- _ "lei -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
