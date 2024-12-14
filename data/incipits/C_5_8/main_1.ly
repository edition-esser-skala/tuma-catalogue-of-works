\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key f \major \time 2/2 \autoBeamOff \tempoMarkup "Allegro"
  a'1~^\partSc
  a2 a
  b1
  g2 d'
}

text = \lyricmode {
  U --
  na
  ho --
  ra non
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
