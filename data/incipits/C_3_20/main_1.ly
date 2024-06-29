\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Larghetto"
  c8.^\partTs g16 g4 r2
  r4 c d d8 d
  d es f es16 d es4 es
  \clef bass g,8.^\partBs c,16 c4 r2
}

text = \lyricmode {
  Mu -- li -- er
  quae e -- rat in
  ci -- vi -- ta -- te pec -- ca -- trix,
  Mu -- li -- er
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
