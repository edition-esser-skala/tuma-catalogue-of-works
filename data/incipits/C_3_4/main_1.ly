\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \tempoMarkup "Grave" \autoBeamOff
  r2^\partSc r4 c'
  e2 cis4 cis
  d dis e8. e16 e4
  r8 e, gis h d8. d16 d4
}

text = \lyricmode {
  O
  ma -- gnum, ma --
  gnum my -- ste -- ri -- um,
  o ad -- mi -- ra -- bi -- le
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
