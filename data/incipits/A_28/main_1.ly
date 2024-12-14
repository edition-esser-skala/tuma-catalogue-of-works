\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Grave"
  e'4.^\partSc e8 d2
  r8 d d2 c4
  R1
  c4. c8 c2
}

text = \lyricmode {
  Ky -- ri -- e
  e -- lei -- son,

  Ky -- ri -- e
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
