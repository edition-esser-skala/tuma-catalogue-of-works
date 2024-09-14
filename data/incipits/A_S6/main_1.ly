\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  e'4.^\partSc e8 d4 d
  c2 h4. e8
  e4 d8 c h4 c
  h c2 h4
}

text = \lyricmode {
  Ky -- ri -- e e --
  lei -- son, e --
  lei -- son, e -- lei -- _
  _ _ \hy
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
