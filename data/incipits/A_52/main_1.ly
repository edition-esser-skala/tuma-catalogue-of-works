\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
  e'8^\partSc c d d e e r4
  R1
  r8 e f[ e16 d] c[ h] a8 r4
}

text = \lyricmode {
  Ky -- ri -- e e -- lei -- son,

  e -- lei -- _ son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
