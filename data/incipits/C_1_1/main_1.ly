\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 2/2 \autoBeamOff
  g'1^\partSc
  a2 c
  h a
  g a4 h
  c g c2
}

text = \lyricmode {
  Al --
  le -- _
  lu -- _
  ia,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
