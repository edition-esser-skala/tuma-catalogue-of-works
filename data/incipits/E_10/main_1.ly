\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key g \major \time 2/2 \autoBeamOff \tempoMarkup "Moderato"
  g'1^\partSc
  g2 a
  h fis
  g1
}

text = \lyricmode {
  O --
  mnes a --
  mi -- ci
  "me -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
