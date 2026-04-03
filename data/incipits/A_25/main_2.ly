\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key c \major \time 3/4 \tempoMarkup "[no tempo]"
  c8^\partOrg c' h c g c
  e, c' h c e, g
  \clef soprano \autoBeamOff e''4.^\partSc e8 e4
  d4. d8 d4
}

text = \lyricmode {
  \skips 12
  Glo -- ri -- a,
  glo -- ri -- a,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
