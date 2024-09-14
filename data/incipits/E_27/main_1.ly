\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key a \minor \time 2/2 \autoBeamOff \tempoMarkup "Moderato"
  r2 e^\partSc
  f e
  f2. f4
  e e e'2
}

text = \lyricmode {
  Se --
  pul -- to
  Do -- mi --
  no
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
