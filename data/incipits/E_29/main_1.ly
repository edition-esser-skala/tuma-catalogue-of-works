\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef bass
  \key g \minor \time 2/2 \autoBeamOff \tempoMarkup "Adagio"
  g,2^\partBc g4 g
  c2. c4
  \clef soprano d'2^\partSc d4 g
  g2 fis
  g4 r r2
}

text = \lyricmode {
  Te -- ne -- brae
  fa -- ctae
  Te -- ne -- brae
  fa -- ctae
  sunt
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
