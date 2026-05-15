\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \twotwotime \key d \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
  cis'2.^\partSc cis4
  d2 c4 b
  a2 d~
  d cis
  d f
  e1
}

text = \lyricmode {
  Tam -- quam
  ad la -- _
  tro -- _
  _
  nem ex --
  "is -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
