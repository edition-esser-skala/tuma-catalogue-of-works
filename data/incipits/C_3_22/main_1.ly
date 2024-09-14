\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key c \dorian \time 2/2 \autoBeamOff
  g'2^\partAc g
  \clef soprano c^\partSc c4 h
  b2 b~
  b1
  a4 a b b
}

text = \lyricmode {
  Au -- di --
  Au -- di -- vi,
  au -- di --

  vi, au -- di -- vi
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
