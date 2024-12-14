\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key a \minor \time 2/2 \autoBeamOff \tempoMarkup "Allegro"
  a'1^\partSc
  a2 a
  a gis4 fis
  gis2. gis4
}

text = \lyricmode {
  A --
  mi -- cus
  me -- _ _
  us "di -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
