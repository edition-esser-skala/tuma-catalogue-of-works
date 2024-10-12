\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key d \dorian \time 4/2 \autoBeamOff \tempoMarkup "A capella"
    \set Staff.timeSignatureFraction = 2/2
  d1^\partBc d4 c d e
  f2 d e2. e4
  d2 d1 c4 h
}

text = \lyricmode {
  Lau -- da -- _ _ _
  _ te Do -- mi --
  num, o -- mnes _
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
