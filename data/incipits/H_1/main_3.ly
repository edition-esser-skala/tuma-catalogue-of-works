\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key f \major \time 2/1 \autoBeamOff \tempoMarkup "[no tempo]"
    \set Staff.timeSignatureFraction = 2/2
  a'\breve^\partBc
  g1 f~
  f g
  \clef soprano a'\breve^\partSc
  g1 f
  g\breve
}

text = \lyricmode {
  Iod. __
  _ _
  _
  Iod. __
  _ _
  _
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
