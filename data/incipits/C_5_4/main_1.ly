\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \twotwotime \key a \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
  a'1^\partSc
  a2 a
  a gis4 fis
  gis2. gis4
  a2 a
  a c4 c
}

text = \lyricmode {
  A --
  mi -- cus
  me -- us _
  o -- scu --
  li me
  tra -- di -- dit
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
