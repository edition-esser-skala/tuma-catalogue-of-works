\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef bass
  \key c \major \time 2/2 \autoBeamOff
  c,2.^\partBc c4
  d2 d
  e f
  \clef soprano g'2. g4
  a2 a
  h c
}

text = \lyricmode {
  Im -- pro --
  pe -- ri --
  um ex --
  Im -- pro --
  pe -- ri --
  um "ex -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
