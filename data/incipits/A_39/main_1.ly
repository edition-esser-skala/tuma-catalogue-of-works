\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  r4 c'4.^\partSc c8 c4
  r2 r4 b
  a a r2
  r4 e' dis dis
}

text = \lyricmode {
  Ky -- ri -- e
  e --
  lei -- son,
  e -- lei -- son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
