\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \twotwotime \key d \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
  d'2.^\partSc c4
  b2 a
  g f4 g
  e2. e4
  d2 e
  f4 g a2
}

text = \lyricmode {
  E -- ram
  qua -- si
  a -- gnus _
  in -- no --
  cens, du --
  ctus _ sum
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
