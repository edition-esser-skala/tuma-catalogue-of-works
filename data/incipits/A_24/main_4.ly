\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  e'1~^\partSc
  e2 e
  d dis
  e h~
  h4 a2 g4 %5
}

text = \lyricmode {
  San --
  ctus,
  san -- _
  ctus, san --
  _ \hy
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
