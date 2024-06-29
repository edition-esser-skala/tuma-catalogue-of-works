\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
  r4^\partSc d'8 h g2~
  g4 fis g r
  g r g r
}

text = \lyricmode {
  Et in ter --
  ra pax,
  pax, pax,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
