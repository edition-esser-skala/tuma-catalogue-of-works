\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key a \minor \time 2/2 \autoBeamOff \tempoMarkup "Allegretto"
  a'2.^\partSc gis4
  a2 h
  c e
  a,1
}

text = \lyricmode {
  A -- sti --
  te -- runt
  re -- ges
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
