\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \twotwotime \key g \major \time 2/2 \tempoMarkup "[no tempo]" \autoBeamOff
  h'1^\partSc
  h
  h2 h
  h1
  h2 h
  a1
  gis2 gis
}

text = \lyricmode {
  Qui --
  a
  vi -- si --
  ta --
  vit et
  fe --
  cit "re -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
