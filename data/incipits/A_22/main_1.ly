\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Grave"
  e'4.^\partSc e8 d4. d8
  d2~ d4 c8 c
  c2 h
}

text = \lyricmode {
  Ky -- ri -- e e --
  lei -- son, e --
  lei -- son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
