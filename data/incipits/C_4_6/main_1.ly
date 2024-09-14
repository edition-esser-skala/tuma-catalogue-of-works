\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \minor \time 4/4 \tempoMarkup "Largo"
  r8^\partVi a' c e a gis a e
  f e f d e d e c \gotoBar "4"
  \clef soprano \autoBeamOff e4^\partSc e8 e c4 c
  h2 a4 r
}

text = \lyricmode {
  \skips 15
  Per -- fi -- ce gres -- sus
  me -- os
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
