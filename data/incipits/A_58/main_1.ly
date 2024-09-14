\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \major \time 3/2 \autoBeamOff
  a'1 a2
  ais1 ais2
  h1 h2
}

text = \lyricmode {
  San -- ctus,
  san -- ctus,
  san -- ctus
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
