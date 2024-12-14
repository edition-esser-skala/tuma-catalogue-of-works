\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \minor \time 2/2 \autoBeamOff \tempoMarkup "Allegro"
  cis'2^\partSc cis4 cis
  d1~
  d2 cis
  d a
}

text = \lyricmode {
  Te -- ne -- brae
  fa --
  ctae
  sunt
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
