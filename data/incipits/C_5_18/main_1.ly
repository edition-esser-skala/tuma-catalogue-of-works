\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \twotwotime \key g \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
  b'2^\partSc b4 c
  d2 c
  b d4 d
  b1
  a
}

text = \lyricmode {
  Ca -- li -- ga --
  ve -- runt
  o -- cu -- li
  me --
  i
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
