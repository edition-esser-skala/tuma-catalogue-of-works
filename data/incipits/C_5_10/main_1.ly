\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \twotwotime \key e \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
  g'1^\partSc
  g2 a
  h fis
  g1
  fis2 fis
  h a
}

text = \lyricmode {
  O --
  mnes a --
  mi -- ci
  me --
  i de --
  re -- "li -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
