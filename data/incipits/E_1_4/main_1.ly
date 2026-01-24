\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "Andante"
  d'4.^\partSc d8 b es d c
  d g, c2 b8[ a]
  g[ a] b4 a2
  g4
}

text = \lyricmode {
  Al -- ma Re -- dem -- pto -- ris
  Ma -- ter, Re -- dem --
  pto -- ris Ma --
  ter,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
