\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key d \dorian \time 2/2 \autoBeamOff \tempoMarkup "Alla breve"
  d1^\partBc
  d4 c d e
  f2 d
  e2. e4
  d2
}

text = \lyricmode {
  Lau --
  da -- _ _ _
  _ te
  Do -- mi --
  num,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
