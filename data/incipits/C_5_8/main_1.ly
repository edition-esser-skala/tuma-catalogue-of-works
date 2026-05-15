\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \twotwotime \key d \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
  a'1~^\partSc
  a2 a
  b1
  a2 d
  d c
  b4 a b2
}

text = \lyricmode {
  U --
  na
  ho --
  ra non
  po -- tu --
  i -- _ stis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
