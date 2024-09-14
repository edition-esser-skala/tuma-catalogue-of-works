\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
  a'2^\partSc h
  a4 d \grace a g2
  fis8 d'16[ h] \grace a8 g4 \grace g8 fis4 r
}

text = \lyricmode {
  Ky -- ri --
  e e -- lei --
  son, e -- lei -- son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
