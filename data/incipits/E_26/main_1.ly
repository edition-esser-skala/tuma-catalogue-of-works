\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "Moderato un poco"
  a'2^\partSc h
  c h4 a
  gis2 h
  e d
}

text = \lyricmode {
  Ae -- sti --
  ma -- tus _
  sum
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
