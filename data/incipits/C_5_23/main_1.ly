\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \twotwotime \key g \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    b'2 b
    c1
    b2 b4 b
    g2 g4 g
    g g g2
    c d
}

text = \lyricmode {
  O vos
  o --
  mnes qui trans --
  i -- tis per
  vi -- am at --
  ten -- "di -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
