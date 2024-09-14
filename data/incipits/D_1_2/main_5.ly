\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  r4^\partSc e' d4. d8
  c4 r c c8 c
  c4 h a4. a8
  g1
}

text = \lyricmode {
  Ma -- gni -- fi --
  cat a -- ni -- ma
  me -- a Do -- mi --
  num
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
