\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \twotwotime \key e \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
  h'1^\partSc
  h2 h
  e1
  e2 d
  c1
  h2 e~
  e dis
}

text = \lyricmode {
  Vi --
  ne -- a
  me --
  a e --
  le --
  cta, e --
  go,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
