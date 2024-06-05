\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key g \dorian \time 2/1 \autoBeamOff \tempoMarkup "[no tempo]"
    \set Staff.timeSignatureFraction = 2/2
  d'1.^\partSic d2
  d d1 c4 b
  c2 d c2. c4
  c1
}

text = \lyricmode {
  In -- ci --
  pit la -- _ _
  _ men -- ta -- ti --
  o
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
