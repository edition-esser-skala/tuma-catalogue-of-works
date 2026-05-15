\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \twotwotime \key a \minor \time 2/2 \tempoMarkup "Moderato un poco" \autoBeamOff
  a'2^\partSc h
  c h4 a
  gis2 h
  e d
  c h
  a1~
  a2 e
}

text = \lyricmode {
  Ae -- sti --
  ma -- tus _
  sum cum
  de -- scen --
  den -- ti --
  bus __
  in
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
