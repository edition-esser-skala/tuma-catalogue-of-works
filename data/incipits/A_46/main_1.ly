\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key h \minor \time 3/2 \autoBeamOff \tempoMarkup "Larghetto"
  R1.
  cis'~^\partSc
  cis2 h d
  e1.~
  e2 d2. cis4
  h2 cis2. h4
}

text = \lyricmode {
  Ky --
  ri -- e
  e --
  le -- i --
  son, Ky -- "ri -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
