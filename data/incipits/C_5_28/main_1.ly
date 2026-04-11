\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key a \minor \time 2/2 \autoBeamOff \tempoMarkup "Andante"
  e1^\partSc
  e2 e
  f f
  d r
  a' h
  c d
  e d4 c
  h2 h
}

text = \lyricmode {
  Te --
  ne -- brae
  fa -- ctae
  sunt
  dum cru --
  ci -- fi --
  xis -- _ _
  sent "Je -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
