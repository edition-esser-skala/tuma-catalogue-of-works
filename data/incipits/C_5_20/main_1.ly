\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \twotwotime \key e \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
  R1^\partSc
  h'
  e2 e4 e
  dis h r2
  r4 h c d
  e4. e8 e2
}

text = \lyricmode {
  Je --
  ru -- sa -- lem
  sur -- ge,
  et __ _ ex --
  u -- e te
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
