\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key e \minor \time 2/2 \autoBeamOff \tempoMarkup "Moderato"
  e2.^\partBc fis4
  g2 \clef soprano h'~^\partSc
  h4 a a2
  r a~
  a4  g g2
  r g~
  g fis4 e
}

text = \lyricmode {
  Ve -- lum
  "tem-" scis --
  sum est,
  scis --
  sum est,
  scis --
  sum _
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
