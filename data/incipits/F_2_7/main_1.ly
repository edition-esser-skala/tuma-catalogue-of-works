\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \dorian \time 4/4 \autoBeamOff
  c'4^\partSc g8 c es4 es8 d
  c4 h16[ c d8] g,4 h8 c
  h c4 h8 c4. c8
}

text = \lyricmode {
  A -- ve
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
