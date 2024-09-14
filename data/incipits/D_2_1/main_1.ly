\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key g \major \time 2/2 \autoBeamOff
  h'1
  h
  h2 h
  h1
}

text = \lyricmode {
  Qui --
  a
  vi -- si --
  "ta -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
