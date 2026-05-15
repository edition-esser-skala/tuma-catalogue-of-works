\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \twotwotime \key a \minor \time 2/2 \tempoMarkup "Allegretto" \autoBeamOff
  a'2.^\partSc gis4
  a2 h
  c e
  a,1
  gis2 h
  e2. e4
  c1
}

text = \lyricmode {
  A -- sti --
  te -- runt
  re -- ges
  ter --
  rae et
  prin -- ci --
  pes
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
