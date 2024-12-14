\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key b \major \time 3/4 \autoBeamOff \tempoMarkup "Andante"
  b'4. c8 d4
  c \grace b8 a2
  b2 f4
  g es g
  c d es 
}

text = \lyricmode {
  Te -- ne -- brae
  fa -- ctae
  sunt dum
  cru -- ci -- fi --
  xis -- _ sent
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
