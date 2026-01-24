\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key g \major \time 4/4 \autoBeamOff
  r8^\partTs g h g d' d16 d d8 c
  h \clef soprano g'^\partSc h g d' d d c
  h8. a16 g8 r r2
}

text = \lyricmode {
  Lau -- da -- te Do -- mi -- num o -- mnes
  gen -- Lau -- da -- te e -- um o -- mnes
  po -- pu -- li
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
