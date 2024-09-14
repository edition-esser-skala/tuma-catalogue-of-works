\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key b \major \time 2/2 \autoBeamOff \tempoMarkup "Moderato"
  b'2^\partSc b
  c1
  b2 b4 b4
  g2 g4 g
}

text = \lyricmode {
  O vos
  o --
  mnes
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
