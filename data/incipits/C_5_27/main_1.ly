\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \twotwotime \key a \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
  r2^\partSc e
  f e
  f2. f4
  e e e'2~
  e4 d c2~
  c4 h a2~
  a4 h c2
}

text = \lyricmode {
  Se --
  pul -- to
  Do -- mi --
  no, si -- gna --
  _ _
  _ _
  tum est
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
