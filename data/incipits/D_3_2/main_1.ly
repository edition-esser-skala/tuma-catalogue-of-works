\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  r4^\partSc c' d4. d8
  e4 r e e8 e
  c4 c c h8[ a]
  gis1
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
