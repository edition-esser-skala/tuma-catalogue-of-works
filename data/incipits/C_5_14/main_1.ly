\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \twotwotime \key d \minor \time 2/2 \tempoMarkup "[no tempo]" \autoBeamOff
  cis'2^\partSc cis4 cis
  d1~
  d2 cis
  d a~
  a d
  c! a
}

text = \lyricmode {
  Te -- ne -- brae
  fa --
  ctae
  sunt dum __
  cru --
  ci -- "fi -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
