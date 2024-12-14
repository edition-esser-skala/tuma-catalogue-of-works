\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key g \major \time 4/2 \autoBeamOff
    \set Staff.timeSignatureFraction = 2/2
  g'1^\partSc h
  d h2 h
  d1 g,2 g
  c2. h8[ a] h1
}

text = \lyricmode {
  A -- ve
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
