\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
  c2^\partAc e4. f8
  g4 e a2
  g c,
  c4 c c h
  c
}

text = \lyricmode {
  Pa -- trem o --
  mni -- po -- ten --
  tem, o --
  mni -- po -- ten -- _
  tem,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
