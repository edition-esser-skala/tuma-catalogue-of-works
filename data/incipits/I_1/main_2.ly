\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key f \major \time 2/1 \autoBeamOff \tempoMarkup "[no tempo]"
    \set Staff.timeSignatureFraction = 2/2
  a'\breve^\partSc
  g
  g
  f~
  f
  g
}

text = \lyricmode {
  Vau. __
  _
  _
  _

  _
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
